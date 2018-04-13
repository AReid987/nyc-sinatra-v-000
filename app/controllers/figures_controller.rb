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
    #if !params[:figure][:title_ids].empty?
    #  @title = Title.find(params[:figure][:title_ids])
    #  @figure = Figure.create(name: params[:figure][:name], titles: @title)
    #end
    @figure = Figure.create(name: params[:figure][:name])
    if !params[:figure][:title_ids].empty?
        @title = Title.find(params[:figure][:title_ids])
        @figure.titles << @title
    end
    if !params[:figure][:landmark_ids].empty?
      binding.pry

    end
    #@landmark = Landmark.find(params[:figure][:landmark_ids])
    #@figure = Figure.create(name: params[:figure][:name], titles: @title)

  end

end
