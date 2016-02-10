require 'pry'
class SiteController < ApplicationController
skip_before_action :verify_authenticity_token

  def game
    #the chosen by user in the system
    #return all the json strings associated with them
    #render :json => games.as_json, :status => :ok
    id = @current_user.id
  end

  def save_game
    # game = params[:data]
    Game.create(
    user_id: @current_user.id,
    json_game: params,
    score: params["score"],
    won: params["won"]
    )
    flash[:success] = "You've saved your game!"
    # binding.pry
    render :json => [], :status => 204
  end

  def load_game
    game = Game.find(8)
    render :json => game.json_game
  end

  def index
    @games = @current_user.games
  end
end
