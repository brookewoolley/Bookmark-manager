require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks/' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/add_bookmark' do
    erb :'bookmarks/add_bookmark'
  end

  post '/bookmarks/' do
    Bookmark.add(url: params[:url], title: params[:title])
    redirect '/bookmarks/'
  end

  run! if app_file == $0

end
