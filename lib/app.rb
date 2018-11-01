require 'sinatra/base'
require 'shotgun'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :method_override
  set :method_override, true
  
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @book = Bookmark.all
    erb :bookmarks_index
  end

  get '/bookmarks/new' do
    erb :bookmarks_new
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  patch '/bookmarks/:id' do
    Bookmark.update(id: params[:id], url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do
    @book = Bookmark.find(id: params[:id])
    erb :'bookmark_edit'
  end

  run if app_file == $0
end
