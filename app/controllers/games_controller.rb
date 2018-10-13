class GamesController < ApplicationController

  def index
    @games = Game.all  
  end

  def new
    @game = Game.new
  end

  def create 
    @game = Game.create
    @game.populate_board!
    redirect_to game_path(@game)
  end

  def show
    @game = Game.show
  end
end

