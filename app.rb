require 'sinatra'
require 'shotgun'

get '/random-cat' do
  @name = ["Amigo", "Speedy", "Sven"].sample 
  erb(:index)
end 

post '/named-cat' do 
  p params
  @name = params[:name] 
  erb(:index)
end 

get '/cat-form' do 
  erb(:cat_form)
end