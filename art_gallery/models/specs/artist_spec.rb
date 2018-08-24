require("minitest/autorun")
require_relative("../artist")

class TestArtist < MiniTest::Test

  def setup
    info = {"id" => 1, "first_name" => "Joan", "last_name" => "Miró", "bio" => "20 April 1893 – 25 December 1983. Spanish painter, sculptor, and ceramicist born in Barcelona.", "style" => "Surrealism"}
    @artist = Artist.new(info)
  end

end
