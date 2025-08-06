foreach ($f in Get-ChildItem *.ogg) {
  $out = "$($f.BaseName).mp3"
  ffmpeg -y -i $f.FullName -ar 44100 -ac 1 -b:a 192k $out
}