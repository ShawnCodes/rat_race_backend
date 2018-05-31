class Api::V1::PlayersController < ApplicationController
  def index
    @players = Player.all
    render json: @players
  end

  def create
    @player = Player.find_or_create_by(player_params)
    render json: @player
  end


  private

  def player_params
    params.require(:players).permit(:username)
  end
end
