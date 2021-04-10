/*
 * @Author: your name
 * @Date: 2021-04-10 14:48:35
 * @LastEditTime: 2021-04-10 15:17:10
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: \GCC-PHAT\wave.c
 */
#include "wave.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
void wavread(Wav *wav,const char * filename)
{
    FILE *fp = NULL;

    //Wav_info wav_info;
    RIFF_t riff;
    FMT_t fmt;
    Data_info data;

    fp = fopen(filename, "rb");
    if (!fp) {
        printf("can't open audio file\n");
        exit(1);
    }

    fread(&wav->wav_info, 1, sizeof(wav->wav_info), fp);

    riff = wav->wav_info.riff;
    fmt = wav->wav_info.fmt;
    data = wav->wav_info.data;

#ifdef SHOW_WAV_INFO
    printf("ChunkID \t%c%c%c%c\n", riff.ChunkID[0], riff.ChunkID[1], riff.ChunkID[2], riff.ChunkID[3]);
    printf("ChunkSize \t%d\n", riff.ChunkSize);
    printf("Format \t\t%c%c%c%c\n", riff.Format[0], riff.Format[1], riff.Format[2], riff.Format[3]);

    printf("\n");

    printf("Subchunk1ID \t%c%c%c%c\n", fmt.Subchunk1ID[0], fmt.Subchunk1ID[1], fmt.Subchunk1ID[2], fmt.Subchunk1ID[3]);
    printf("Subchunk1Size \t%d\n", fmt.Subchunk1Size);
    printf("AudioFormat \t%d\n", fmt.AudioFormat);
    printf("NumChannels \t%d\n", fmt.NumChannels);
    printf("SampleRate \t%d\n", fmt.SampleRate);
    printf("ByteRate \t%d\n", fmt.ByteRate);
    printf("BlockAlign \t%d\n", fmt.BlockAlign);
    printf("BitsPerSample \t%d\n", fmt.BitsPerSample);

    printf("\n");

    printf("blockID \t%c%c%c%c\n", data.Subchunk2ID[0], data.Subchunk2ID[1], data.Subchunk2ID[2], data.Subchunk2ID[3]);
    printf("blockSize \t%d\n", data.Subchunk2Size);
    printf("samples_per_channel \t%d\n", data.Subchunk2Size/fmt.NumChannels/2);

    printf("\n");

    printf("duration \t%d\n", data.Subchunk2Size / fmt.ByteRate);

    
#endif


    wav->fs = fmt.SampleRate;

    wav->ch = fmt.NumChannels;
    wav->samples_per_ch = data.Subchunk2Size/fmt.NumChannels/fmt.BitsPerSample;


    wav->data= (int16_t *)malloc(wav->samples_per_ch*sizeof(int16_t));
	fread(wav->data, 2, wav->samples_per_ch*wav->ch, fp);

	wav->dataf = (float *)malloc(wav->samples_per_ch * sizeof(float));

	for (int i = 0; i < wav->samples_per_ch; i++)
		wav->dataf[i] = wav->data[i] / 32768.0;







}
