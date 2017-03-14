class GuestsController < ApplicationController

  get '/guests' do
    @guests = Guest.all
    erb :'/guests/index'
  end

  get '/guests/new' do
    erb :'/guests/new'
  end

  post '/guests' do
    # binding.pry
    @guest = Guest.create(first_name: params[:guest][:first_name], last_name: params[:guest][:last_name], occupation: params[:guest][:occupation], episode_ids: params[:guest][:episode_ids])
    redirect '/guests'
  end

  get '/guests/:id' do
    @guest = Guest.find_by_id(params[:id])
    erb :'/guests/show'
  end


  get '/guests/:id/edit' do
    @guest = Guest.find_by_id(params[:id])
    erb :'/guests/edit'
  end

  patch '/guests/:id' do
    @guest = Guest.find_by_id(params[:id])
    @guest.update(params[:guest])
    redirect "/guests/#{@guest.id}"
  end


end
