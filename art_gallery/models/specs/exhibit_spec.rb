require("minitest/autorun")
require("minitest/rg")
require_relative("../exhibit")

class TestExhibit < MiniTest::Test

  def setup
    info = {"id" => 1,
    "name" => "Nu au miroir",
    "date_created" => "1919",
    "format" => "oil on canvas",
    "style" => "Surrealism",
    "artist_id" => 1}
    @exhibit = Exhibit.new(info)
  end

  def test_exhibit_has_name
    result = @exhibit.name()
    assert_equal("Nu au miroir", result)
  end


end 
