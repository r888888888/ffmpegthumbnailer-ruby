require 'test/unit'
require 'ffmpegthumbnailer-ruby'
require 'fileutils'

class FfmpegthumbnailerTest < Test::Unit::TestCase
  def test_resize
    path = File.join(File.dirname(File.expand_path(".", __FILE__)), "flash.swf")
    Ffmpegthumbnailer.resize(path, "/tmp/flash.jpg", 150)
    assert(File.size("/tmp/flash.jpg") > 0, "Thumbnail should have been created")
    FileUtils.rm_f("/tmp/flash.jpg")
  end
end
