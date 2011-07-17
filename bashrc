mkv2mov() {
  # usage: mkv2mov video.mkv <audio kb>k
  ffmpeg -i "$1" -vcodec copy -acodec libfaac -ac 2 -ab $2 -sn -map_chapters -1 "$1.mov"
}
