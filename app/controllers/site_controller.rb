require 'pry'
class SiteController < ApplicationController
skip_before_action :verify_authenticity_token

  def game; end

  def save_game
    game = Game.new(
    user_id: @current_user.id,
    json_game: params["data"],
    score: JSON.parse(params["data"])["score"],
    won: JSON.parse(params["data"])["won"]
    )
    if game.save
      flash[:success] = "You've saved your game!"
      render :json => [], :status => 204
    else
      render :json => [], :status => :no_content
    end
  end

  def load_game
    game = Game.find(11)
    game = game.json_game
    render :json => game.as_json(except: [:created_at, :updated_at]), :status => :ok
  end

  def index
    if @current_user
      @games = @current_user.games
      @leaders = Game.order(score: :desc).limit(5)
    end
  end
end
