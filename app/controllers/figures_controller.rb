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
    Title.all.each do |title|
      if title.id.to_s == params[:figure][:title_ids].join 
        @title = title
        @figure = Figure.create(name: params[:figure][:name], title: @title)
        binding.pry
      end
    end
    binding.pry

    #@figure = Figure.create(name: params[:figure][:name])
    #if !params[:figure][:title_ids].empty?
    #  @title = Title.find(params[:figure][:title_ids])
    #  @figure.titles << @title
    #end

    #if !params[:figure][:landmark_ids].empty?
    #  @landmark = Landmark.find(params[:figure][:landmark_ids])
    #  @figure.landmarks << @landmark
    #end


  end

end
