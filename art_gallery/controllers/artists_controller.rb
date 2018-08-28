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
get '/artists/new' do
  erb(:"artists/new")
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save()
  redirect to '/artists'
  end

# delete artists
post '/artists/:id/delete' do
  Artist.destroy(params[:id])
  redirect to("/artists")
end

# EDIT
get '/artists/edit' do
  @artists = Artist.all
  erb(:"artists/edit")
end

get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:"artists/edit_form")
end

# get '/artists/:id' do
#   @artist = Artist.find(params["id"])
#   erb(:show)
# end
