#!/bin/bash

# [ARRAST_VJ] 1.1 - arrastvj.org
#
# Script para gerar vídeo a partir de frames e arquivo de áudio - utiliza ffmpeg
#
# por brunorohde - brunorohde.wordpress.com / github.com/brunorohde
#
# INSTRUÇÕES:
# 1 - Usar o nome base FRAME na hora de exportar os frames no [ARRAST_VJ], ou alterar nome base abaixo
# 2 - Tornar este arquivo executável, caso não seja (Linux - Terminal - chmod +x makeVideo.sh)
# 3 - Alterar a taxa de frames abaixo de acordo com seu projeto (padrão 24 FPS)
# 4 - Remover trecho '-i AUDIO_MIX.wav -c:a copy' para criar um vídeo sem áudio
# 5 - Alterar demais parâmetros do ffmpeg, como codec e formato de saída, se desejado
# 6 - Execute o script dentro do diretório /Export

# ffmpeg -r 24 -i "FRAME%05d.jpg" -c:v mjpeg -q:v 0 Video.mov

ffmpeg -r 24 -i "FRAME%05d.jpg" -i AUDIO_MIX.wav -c:a aac -c:v libx264 -crf 18 Video.mp4
