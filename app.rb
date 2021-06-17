require 'sinatra/base'
require 'sinatra/reloader'

class Birthday < Sinatra::Base
  configure :production, :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/details' do
    @name = params[:name]
  end

  run! if app_file == $0
end