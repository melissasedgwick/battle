require 'sinatra/base'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect('/play')
  end

  get '/play' do
    @player_1_name = session[:name1]
    @player_2_name = session[:name2]
    @player_1_hp = 100
    @player_2_hp = 100
    erb(:play)
  end

  get '/attack' do
    @player_1_name = session[:name1]
    @player_2_name = session[:name2]
    erb :attack
  end

  run! if app_file == $0
end
