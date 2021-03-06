require 'sinatra/base'
#require 'shotgun'


class BattleshipsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/NewGame' do
    #@name = params[:Name]
    erb :newgame
  end

  get '/Game' do
    @name = params[:Name]
    erb :game
    #erb :newgame
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
