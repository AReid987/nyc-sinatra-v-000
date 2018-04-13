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
    title =
    Title.all.each do |title|
      title = Title.find(params[:figure][:title_ids])
      if title
        @title = title
        @figure = Figure.create(name: params[:figure][:name])
        @figure.titles << @title
      end
    end
    #@landmark = Landmark.find(params[:figure][:landmark_ids])
    binding.pry
    #@figure = Figure.create(name: params[:figure][:name], titles: @title)

  end

end
