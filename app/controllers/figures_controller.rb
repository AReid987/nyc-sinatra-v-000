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
    end
    binding.pry
  end

end
