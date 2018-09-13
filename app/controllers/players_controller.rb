class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(post_params)
    if @player.save
      flash[:alert] = "Player successfully created."
      redirect_to post_path(@player)
    else
      flash[:alert] = "Player not created, please check your submission."
      redirect_to '/players/new'
    end
  end

  private
  def player_params
    params.require(:player).permit(:name, :health, :stamina, :shade, :strength, :endurance, :constitution, :intelligence, :level, :exp, :sprite)
  end
end
