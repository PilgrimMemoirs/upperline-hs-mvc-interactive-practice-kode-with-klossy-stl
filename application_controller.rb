require 'bundler'
Bundler.require
require_relative 'models/pig_latinize.rb'

class MyApp < Sinatra::Base

  get '/' do
     erb :index
  end

  post '/fn' do
    params[:first_name]
  end

  get '/pig_latin' do
    erb :to_pig_latin
  end

  post '/piglatinize' do
    to_pig_latin(params[:phrase]) + params[:first_name]
  end

  get '/kookies' do
      erb :kookies
  end

  get '/greet/:time' do
    time =  params[:time]
    if time == "morning"
      @greet = "Wake up!"
    elsif time == "afternoon"
      @greet =  "Nap time!"
    elsif time == "night"
      @greet = "GO TO BED!"
    else
      @greet = "I have no idea what you're talking about"
    end
    erb :greet
  end




end #ends sinatra class
