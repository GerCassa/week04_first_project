require_relative( "../models/gallery.rb" )
require_relative( "../models/artist.rb" )
require("pry-byebug")



gallery1 = Gallery.new({
  "name" => "V&G Arts"
  })

gallery1.save()

artist1 = Artist.new({
  "first_name" => "Joan",
  "last_name" => "Miró",
  "style" => "Surrealism",
  "bio" => "20 April 1893 – 25 December 1983. Spanish painter, sculptor, and ceramicist born in Barcelona.",
  "gallery_id" => gallery1.id
})

artist1.save()


binding.pry
nil
