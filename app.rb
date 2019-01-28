require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = [
      "https://github.com/makersacademy/",
      "https://github.com/brookewoolley",
      "https://www.bbc.co.uk/"
    ]
    @bookmarks.join
    erb :bookmarks
  end


  run! if app_file == $0

end
