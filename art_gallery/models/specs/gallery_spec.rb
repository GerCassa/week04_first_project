require("minitest/autorun")
require("minitest/rg")
require_relative("../gallery")

class TestGallery < MiniTest::Test

  def setup
    info = {"id" => 1, "name" => "V&G Arts"}
    @gallery = Gallery.new(info)
  end

  def test_gallery_name()
    result = @gallery.name()
    assert_equal("V&G Arts", result)
  end

end
