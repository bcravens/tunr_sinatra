require "sinatra"
require "active_record"
require "sinatra/reloader"


require_relative "db/connection"
require_relative "models/artist"
require_relative "models/song"

get '/' do
  erb :index
end

get '/artists' do
  @artists = Artist.all
  erb :"artists/index"
end

get '/artists/new' do
  "hello"
  erb :"artists/new"
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb :"artists/show"
end

post '/artist' do

end
