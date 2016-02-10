require 'pry'
class SiteController < ApplicationController
skip_before_action :verify_authenticity_token

  def game; end

  def save_game
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
    game = game.json_game
    render :json => game
  end

  def index
    @games = @current_user.games
  end
end
