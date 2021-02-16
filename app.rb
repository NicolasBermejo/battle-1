require 'sinatra'
require 'shotgun'

get '/random-cat' do
  @name = ["Amigo", "Speedy", "Sven"].sample 
  erb(:index)
end 

get '/named-cat' do 
  p params
  @name = params[:name] 
  erb(:index)
end 