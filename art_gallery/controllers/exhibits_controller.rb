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
get '/exhibits/edit' do
  @exhibits = Exhibit.all
  @artists = Artist.all()
  erb(:"exhibits/edit")
end

get '/exhibits/:id/edit' do
  @artists = Artist.all()
  @exhibit = Exhibit.find(params[:id])
  erb(:"exhibits/edit_form")
end

post '/exhibits/:id/edit' do
  @artists = Artist.all()
  exhibit = Exhibit.new(params)
  exhibit.update
  redirect to "/exhibits"
end

# delete exhibits


# assign an exhibit to an artist

# show
get '/exhibits/:id' do
  @exhibit = Exhibit.find(params["id"])
  erb(:"/exhibits/show")
end
