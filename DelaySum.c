
#include "DelaySum.h"
#include <stdint.h>
#include <math.h>
#include <stdlib.h>
#include "hamming.h"
#include "kiss_fft.h"
#include "kiss_fftr.h"

/**
 * @description: frequency-domain delay-sum beamformer using circular array
 * @param { 
            x : input signal ,samples * channel
            fs: sample rate
            N : fft length,frequency bin number
            frameLength : frame length,usually same as N
            inc : step increment
            r : array element radius
            angle : incident angle
            }
 * @return {delay-sum output}
 */

int16_t DelaySumURA(float **x, float *yout, uint16_t fs, uint32_t DataLen, int16_t N, int16_t frameLength, int16_t inc, float r, int16_t angle, int16_t pitch)
{

    int16_t half_bin = (N_FFT / 2 + 1);

    /* malloc normalized frequency bin */
    double *omega = (double *)malloc(half_bin * sizeof(double));

    /* malloc frequency bin weights */
    Complex **H = (Complex **)malloc(half_bin * sizeof(Complex *));
    for (int16_t i = 0; i < half_bin; i++)
        H[i] = (Complex *)malloc(Nele * sizeof(Complex));

    /* malloc frequency bin */
    Complex **xk = (Complex **)malloc(half_bin * sizeof(Complex *));
    for (int16_t i = 0; i < half_bin; i++)
        xk[i] = (Complex *)malloc(Nele * sizeof(Complex));

    float gamma[Nele] = {0, 45, 90, 135, 180, 225, 270, 315}; //麦克风位置

    /* calculate time delay tau*/
    float *tao = CalculateTau(gamma, angle, pitch);

    /*Euler's formula e^ix = cos(x)+i*sin(x)*/
    for (int16_t k = 0; k < half_bin; k++)
    {
        /* Normalized frequency bin */
        omega[k] = 2 * pi * k * fs / N;

        /* steering vector */
        for (int8_t i = 0; i < Nele; i++)
        {
            if (k < 15 || k > 5000 * N / fs)
            {
                H[k][i].real = 1;
                H[k][i].imag = 0;
            }
            else
            {
                double x = omega[k] * tao[i];
                H[k][i].real = cos(x);
                H[k][i].imag = -1 * sin(x);
            }
        }
    }

    double *frame_bin; //= (double *)malloc(frameLength*sizeof(double));

    kiss_fft_cpx cx_in[WinLen];
    kiss_fft_cpx cx_out[WinLen];
    kiss_fft_cfg cfg = kiss_fft_alloc(N_FFT, 0, NULL, NULL);

    for (int32_t i = 0; i < DataLen - WinLen * 2; i = i + inc)
    {

        /* step 1: delay */
        for (uint8_t n = 0; n < Nele; n++)
        {

            for (uint16_t l = i; l < WinLen + i; l++)
            {
                cx_in[l - i].r = x[n][l] * win[l - i];
                cx_in[l - i].i = 0;
            }
            kiss_fft(cfg, cx_in, cx_out);
            for (uint16_t l = i; l < half_bin + i; l++)
            {
                /*
				complex multiply :
				(a+bi)*(c+di)=(ac-bd)+(ad+bc)i
				*/
                xk[l - i][n].real = cx_out[l - i].r * H[l - i][n].real - cx_out[l - i].i * H[l - i][n].imag;
                xk[l - i][n].imag = cx_out[l - i].r * H[l - i][n].imag + cx_out[l - i].i * H[l - i][n].real;
            }
        }
        /* step 2: sum */
        for (uint16_t k = 0; k < half_bin; k++)
        {
            for (uint16_t n = 1; n < Nele; n++)
            {
                xk[k][0].real = xk[k][0].real + xk[k][n].real;
                xk[k][0].imag = xk[k][0].imag + xk[k][n].imag;
            }
        }

        /* inverse FFT */
        kiss_fftr_cfg icfg = kiss_fftr_alloc(N_FFT, 1, 0, 0);
        kiss_fft_cpx cx_inverse_in[N_FFT / 2 + 1];
        kiss_fft_scalar cx_out_real[N_FFT];

        for (uint16_t k = 0; k < half_bin; k++)
        {
            cx_inverse_in[k].r = xk[k][0].real;
            cx_inverse_in[k].i = xk[k][0].imag;
        }

        kiss_fftri(icfg, cx_inverse_in, cx_out_real);

        free(icfg);

        /* concatenate signal */
        for (uint16_t j = i; j < WinLen; j++)
        {
            yout[j] = yout[j] + sqrt(cx_out[j - i].r * cx_out[j - i].r + cx_out[j - i].i * cx_out[j - i].i);
        }
    }

    for (int16_t i = 0; i < half_bin; i++)
        free(H[i]);

    free(H);

    for (int16_t i = 0; i < half_bin; i++)
        free(xk[i]);

    free(xk);

    free(omega);

    free(cfg);
    return 0;
}

int8_t Angle2Radian(float *gamma)
{
    int8_t i = 0;
    for (i = 0; i < Nele; i++)
    {
        gamma[i] = gamma[i] * pi / 180;
    }
    if (i == Nele)
        return 0;
    else
        return -1;
}
float *CalculateTau(float *gamma, int16_t angle, int16_t pitch)
{
    int16_t c = 340;
    float r = 0.04;
    float pitch_rad = pitch * pi / 180;
    float angle_rad = angle * pi / 180;

    Angle2Radian(gamma);

    for (int8_t i = 0; i < Nele; i++)
    {
        double angle_diff = (angle_rad - gamma[i]);

        gamma[i] = r * sin(pitch_rad) * cos(angle_diff) / c;
    }

    return gamma;

} //