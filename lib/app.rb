require 'sinatra/base'
require 'shotgun'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @book = Bookmark.all
    erb :bookmarks_index
  end

  run if app_file == $0
end
