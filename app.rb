# in app.rb

require 'sinatra/base'
require './lib/Player.rb'
require './lib/Game.rb'
class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    # @catname = params[:name]
      erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
#
# get '/secret' do
#   "Shhhhhhhhhhhh I'm hunting duckies"
# end
#
# get '/random-cat' do
#   @catname = %w(Amigo Misty Almond).sample
#   erb(:index)
# end
#
# post '/named-cat' do
#   p params
#   @catname = params[:name]
#   erb(:index)
# end
#
# get '/post-cat' do
#   # p params
#   # @catname = params[:name]
#   erb(:forms)
# end
#

#test comment
