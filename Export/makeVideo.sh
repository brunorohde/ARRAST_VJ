#!/bin/bash

# [ARRAST_VJ] 1.0 - arrastvj.org
#
# Script para gerar vídeo a partir de frames e arquivo de áudio - utiliza ffmpeg
#
# por brunorohde - brunorohde.wordpress.com / github.com/brunorohde

ffmpeg -r 24 -i "FRAME%05d.jpg" -i AUDIO_MIX.wav -c:a copy -c:v mjpeg -q:v 0 Video.mov
