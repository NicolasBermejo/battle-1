require 'sinatra'
require 'shotgun'




get '/cat' do
  @name = ["Amigo", "Speedy", "Sven"].sample 
  erb(:index)
end 