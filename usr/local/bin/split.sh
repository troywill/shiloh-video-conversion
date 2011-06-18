#!/bin/bash
set -o errexit
set -o nounset

SS=0
ENDPOS=301

FILE=$1
echo ${FILE}
mplayer -ss ${SS} -endpos ${ENDPOS} -vc null -vo null -ao pcm:fast:file=stream.wav ${FILE}
mplayer -ss ${SS} -endpos ${ENDPOS} -vo yuv4mpeg -ao null -nosound  ${FILE}

