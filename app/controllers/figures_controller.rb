class FiguresController < ApplicationController

  get '/figures' do
    "hello world"
    #erb :'figures/index'
  end

  get '/figures/new' do
    'hello world'
    erb :'figures/new'
  end
end
