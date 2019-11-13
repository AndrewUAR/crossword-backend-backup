class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find_by(id: params[:id])
  end

  def create
    
  end

end