INSTALLATION
============

  brew install ffmpegthumbnailer    # for os x
  apt-get install ffmpegthumbnailer # for debian/ubuntu

USAGE
=====

  Ffmpegthumbnailer.resize(source_file_path, dest_file_path, thumbnail_width)
  Ffmpegthumbnailer.resize("input.swf", "output.swf", 150)

CAVEATS
=======

  ffmpeg basically only supports FLV movies. Complex vector animations etc will fail.
