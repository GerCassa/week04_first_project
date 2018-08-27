require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("../models/gallery.rb")
require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
also_reload("../models/*")


#index
get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end

# add new artists


# delete artists
