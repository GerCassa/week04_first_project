require_relative( "../models/gallery.rb" )
require_relative( "../models/artist.rb" )
require("pry-byebug")

artist1 = Artist.new({
  "first_name" => "Joan",
  "last_name" => "Miró",
  "bio" => "20 April 1893 – 25 December 1983. Spanish painter, sculptor, and ceramicist born in Barcelona.",
  "style" => "Surrealism"
})

artist1.save()
