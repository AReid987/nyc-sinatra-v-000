class FiguresController < ApplicationController

  get '/figures' do
    erb :'figures/index'
  end

  get '/figures/new' do
    'hello world'
    erb :'figures/new'
  end
end
