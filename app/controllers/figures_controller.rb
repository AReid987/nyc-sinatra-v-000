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
    @figure = Figure.create(name: params[:figure][:name])

    if !params[:figure][:title_ids].nil?
      Title.all.each do |title|
        if title.id.to_s == params[:figure][:title_ids].join
          @title = title
          @figure.titles << @title
        end
      end
    end

    if !params[:figure][:landmark_ids].nil?
      Landmark.all.each do |landmark|
        if landmark.id.to_s == params[:figure][:landmark_ids].join
          @landmark = landmark
          @figure.landmarks << @landmark
        end
      end
    end

    if !params[:title][:name].empty?
      @title = Title.create(name: params[:title][:name])
      @figure.titles << @title
    end

    if !params[:landmark][:name].empty?
      @title = Landmark.create(name: params[:title][:name])
      @figure.titles << @title
    end
    #binding.pry
  end

end
