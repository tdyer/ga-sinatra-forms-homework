require 'sinatra'
require 'sinatra/reloader'
require 'pry'
set :server, 'webrick'

require_relative './models/user'

get '/users' do
  @users = User.all
  erb :list_users
end

get '/user/new' do
  erb :user_new
end

get '/user/:id' do
  @user = User.find(@params[:id])
  erb :user_show, :locals => { :user => @user}
end


post '/user/create' do
  @user = User.create(:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email])
  redirect "/user/#{@user.id}"
end

