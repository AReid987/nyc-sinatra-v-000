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

    if params[:title][:name] == ""
      Title.all.each do |title|
        if title == Title.find(params[:figure][:title_ids])
          @title = title

          @figure.titles << @title
        elsif title != Title.find(params[:figure][:title_ids])

        end
      end
    end
    #@landmark = Landmark.find(params[:figure][:landmark_ids])
    binding.pry
    #@figure = Figure.create(name: params[:figure][:name], titles: @title)

  end

end
