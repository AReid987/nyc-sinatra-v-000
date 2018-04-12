class FiguresController < ApplicationController

  get '/figures' do 
    erb :index 
  end
  
  get '/figures/new' do
    'hello world'
    erb :'/figures/new'
  end
end
