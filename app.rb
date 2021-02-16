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

get '/cat' do 
  "<div>
  <img src=https://www.catster.com/wp-content/uploads/2018/01/Ragdoll-cat-on-blue-backdrop-.jpg>
  </div>"
end 