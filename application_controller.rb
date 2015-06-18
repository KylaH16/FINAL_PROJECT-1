require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do
    na = params[:name]
    emo = params[:emotion]
    y_or_n = params[:question]
    #turns into a hash called params from index.erb
    puts params
    Responder = Result.new
    @answer = Responder.response(na, emo, y_or_n)
    #respond.erb
    erb :respond
  end

end