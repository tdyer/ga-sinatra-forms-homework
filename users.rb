require 'sinatra'
require 'sinatra/reloader'
require 'pry'
set :server, 'webrick'

require_relative './models/user'

get '/users' do
  User.show_store
end

get '/user/show/:id' do
	User.find(@params[:id])
	erb :user_show
end

get '/user/new' do
  erb :user_new
end

post '/user/create' do
	params = @params
  # binding.pry
  @user = User.create(:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email])
  erb :user_show
end


