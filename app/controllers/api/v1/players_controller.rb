class Api::V1::PlayersController < ApplicationController
  def index
    @players = Player.all
    render json: @players
  end

  def create
  end
end
