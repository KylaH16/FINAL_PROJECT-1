require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do
    a = params[:a]
    b = params[:b]
    c = params[:c]
    meth = params[:fnc]
    #turns into a hash called params from index.erb
    puts b
    puts b.class
    #puts params
    Test=Calc.new
    @answer = Test.nav(a,b,c,meth)
    #respond.erb
    erb :respond
  end

end