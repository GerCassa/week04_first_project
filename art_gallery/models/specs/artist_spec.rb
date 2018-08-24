require("minitest/autorun")
require("minitest/rg")
require_relative("../artist")

class TestArtist < MiniTest::Test

  def setup
    info = {"id" => 1,
       "first_name" => "Joan",
       "last_name" => "Miró",
       "bio" => "20 April 1893 – 25 December 1983. Spanish painter, sculptor, and ceramicist born in Barcelona.",
       "style" => "Surrealism"}
    @artist = Artist.new(info)
  end

  def test_artist_has_first_name
    result = @artist.first_name()
    assert_equal("Joan", result)
  end

  def test_artist_has_last_name
    result = @artist.last_name()
    assert_equal("Miró", result)
  end

  def test_artist_has_bio
    result = @artist.bio()
    assert_equal("20 April 1893 – 25 December 1983. Spanish painter, sculptor, and ceramicist born in Barcelona.", result)
  end

  def test_artist_has_style
    result = @artist.style()
    assert_equal("Surrealism", result)
  end

  def test_artist_full_name
    result = @artist.full_name()
    assert_equal("Joan Miró", result)
  end

end
