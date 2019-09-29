FOR /F "tokens=*" %%G IN ('dir /b /s *.mp4') DO ffmpeg -i "%%G" -c:v libx264 -preset slow -crf 23 -profile:v main -level 3.1 -vf scale=720:-1 -acodec aac -b:a 128k "%%~nG.new.mp4"

REM ffmpeg -i '.\Moana (2016).mp4' -vf scale=720:-1 -acodec mp3 -maxrate: 320 -b:v 3M -maxrate:v 3M -bufsize 2M -t 90 test.wmv
REM ffmpeg -i '.\Moana (2016).mp4' -vf scale=720:-1 -acodec mp3 -maxrate: 320 -c:v mpeg4 -b:v 3M -maxrate:v 3M -bufsize 2M -t 90 test.avi

REM # https://trac.ffmpeg.org/wiki/Encode/H.264
REM # https://trac.ffmpeg.org/wiki/Encode/MPEG-4

REM # Available resolution: Within 720 x ﻿576﻿ (W x H) pixels.
REM # . Frame rate: Less than 30 fps.
REM # . Playable movie file: .avi, .mpg, .mp4, .divx, .xvid, .wmv.
REM # --The playable movie file may not be played according to the codec format.

REM # . Playable codec format: divx, xvid, mpeg-1, mpeg-4 (mpg4, mp42, mp43), wmv9 (wmv3).
REM # . Playable Audio format: MP3, AC3, AAC, WMA.

REM # . Max video bitrate:
REM # - mpeg-1: 8Mbps
REM # - mpeg-4 (mpg4, mp42, mp43): 4Mbps
REM # - wmv9: 3 Mbps
REM # - divx 3: 3 Mbps
REM # - divx 4/5/6: 4.8 Mbps
REM # - xvid: 4.5 Mbps

REM # . Max audio bitrate:
REM # - mp3: 320 Kbps
REM # - wma: 320 Kbps
REM # - ac-3: 640 Kbps
REM # - aac: 449 Kbps
