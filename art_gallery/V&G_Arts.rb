require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("controllers/artists_controller")
require_relative("controllers/exhibits_controller")
also_reload("./models/*")

#Gallery Home Page
get '/' do
  erb(:gallery)
end

#Manager Section
get '/manager' do
  erb(:"managers/home")
end
