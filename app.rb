require 'sinatra/base'
require 'sinatra/reloader'

class Birthday < Sinatra::Base
  configure :production, :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Happy Birthday"
  end

  run! if app_file == $0
end