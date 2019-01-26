require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..",__dir__)

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.fetch_comedians(params)
    erb :'comedians/index'
  end

end
