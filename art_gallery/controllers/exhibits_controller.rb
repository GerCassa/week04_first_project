require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("../models/gallery.rb")
require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
also_reload("../models/*")


#index
get '/exhibits' do
  @exhibits = Exhibit.all()
  erb(:"exhibits/index")
end
# add new exhibits
#NEW
get '/exhibits/new' do
  @artists = Artist.all()
  erb(:"exhibits/new")
end
#Save
post '/exhibits' do
  @exhibit = Exhibit.new(params)
  @exhibit.save()
  redirect to '/exhibits'
end

# edit existing exhibits


# delete exhibits


# assign an exhibit to an artist
