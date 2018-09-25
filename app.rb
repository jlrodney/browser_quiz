require 'sinatra/base'
require './lib/player'
require './lib/game'

class BrowserQuiz < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/player1' do
    erb :player1
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:name]))
    @game = session[:game]
    p session
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/player2' do
    erb :player2
  end

  run! if app_file == $0
end
