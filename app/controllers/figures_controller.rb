class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end

  post '/figures' do
    if !params[:figure][:title_ids].empty?
      @title = Title.find(params[:figure][:title_ids])
      @landmark = Landmark.find(params[:figure][:landmark_ids])
      @figure = Figure.create(name: params[:figure][:name], titles: @title)
    end
    #binding.pry
  end

end
