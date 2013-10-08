require 'sinatra'
require 'sinatra/reloader'
require 'pry'
set :server, 'webrick'

require_relative './models/user'

get '/users' do
  User.show_store
end

get '/user/show' do
end

get '/user/new' do
  erb :user_new
end

post '/user/create' do
  params = params[:first_name]
#  binding.pry
#   User.create(params)
#  erb :user_new
end

