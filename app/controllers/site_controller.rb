require 'pry'

class SiteController < ApplicationController
  def game
    #the chosen by user in the system
    #return all the json strings associated with them
    #render :json => games.as_json, :status => :ok
    id = @current_user.id
  end

  def save_game
    game = params[:data]
    binding.pry
  end

  def index
    #find all the games associated with the user

  end
end
