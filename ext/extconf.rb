#!/usr/bin/env ruby

require 'mkmf'

dir_config("ffmpegthumbnailer")

have_header("libffmpegthumbnailer/videothumbnailerc.h")

have_library("ffmpegthumbnailer")

have_func("video_thumbnailer_create", "libffmpegthumbnailer/videothumbnailerc.h")

# with_cflags("-O2 -Wall") {true}
with_cflags("-O0 -g -Wall") {true}

create_makefile("ffmpegthumbnailer")
