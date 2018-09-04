# Media

## Optical Media
* [DVD Flick](http://www.dvdflick.net/)

## Editing
* [Davinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve/)

### Lossess Editing
* [Lossless Cut](https://github.com/mifi/lossless-cut)

## Audio Editing
* [Audacity](https://sourceforge.net/projects/audacity/)

#ffmpeg
## Car Video Conversion
```
ffmpeg -i input.m4v -vf scale=720:-1 -vcodec mpeg4 -acodec aac -b:v 4M -maxrate 4M -bufsize 1M -b:a 128k -pass 2 output.mp4
```
