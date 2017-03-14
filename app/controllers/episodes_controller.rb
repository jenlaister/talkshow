require 'pry'

class EpisodesController < ApplicationController

  get '/episodes' do
    @episodes = Episode.all
    erb :'/episodes/index'
  end

  get '/episodes/new' do
    erb :'/episodes/new'
  end

  post '/episodes' do
    @episode = Episode.create(params[:episode])
    redirect '/episodes'
  end

  get '/episodes/:id' do
    @episode = Episode.find_by_id(params[:id])
    erb :'/episodes/show'
  end


  get '/episodes/:id/edit' do
    @episode = Episode.find_by_id(params[:id])
    erb :'/episodes/edit'
  end

  patch '/episodes/:id' do
    @episode = Episode.find_by_id(params[:id])
    @episode.update(params[:episode])
    redirect "/episodes/#{@episode.id}"
  end



end
