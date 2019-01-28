require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..",__dir__)

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.fetch_comedians(params)
    @specials = Special.fetch_specials
    erb :'comedians/index'
  end

  get '/comedians/new' do
    @comedians.create(params)
    erb :'comedians/new'
  end

end
