require 'sinatra'
require 'shotgun'
get '/' do
  "Hello!"
end

get '/secret' do
  "shhhhh!!"
end

get '/batcave' do 
  "this is batcave"
end

get '/death' do 
  "this is the end"
end