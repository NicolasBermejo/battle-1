require 'sinatra'
require 'shotgun'

get '/cat' do 
  erb(:index)
end 