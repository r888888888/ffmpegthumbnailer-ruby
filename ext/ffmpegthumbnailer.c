#include <ruby.h>
#include <libffmpegthumbnailer/videothumbnailerc.h>

static VALUE ffmpegthumbnailer_module;

static VALUE ffmpegthumbnailer_resize(VALUE module, VALUE source_val, VALUE dest_val, VALUE width_val) {
  const char * source = StringValueCStr(source_val);
  const char * dest = StringValueCStr(dest_val);
  int width = NUM2INT(width_val);
  
  video_thumbnailer * thumbnailer = video_thumbnailer_create();
  
  if (thumbnailer == NULL) {
    rb_raise(rb_eException, "Could not create thumbnailer object");
  }
  
  thumbnailer->thumbnail_size = width;
  video_thumbnailer_generate_thumbnail_to_file(thumbnailer, source, dest);
  video_thumbnailer_destroy(thumbnailer);
  thumbnailer = NULL;
  
  return Qnil;
}

void Init_ffmpegthumbnailer() {
  ffmpegthumbnailer_module = rb_define_module("FfmpegThumbnailer");
  rb_define_module_function(ffmpegthumbnailer_module, "resize", ffmpegthumbnailer_resize, 3);
}
