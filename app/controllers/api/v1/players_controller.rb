class Api::V1::PlayersController < ApplicationController
  before_action :find_player, only: [:show]

  def index
    @players = Player.all
    render json: @players
  end

  def show
    render json: @player
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      render json: @note, status: :accepted
    else
      render json: { errors: @player.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def find_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.permit(:name, :race, :player_class, :level, :hp, :ac, :speed, :str, :dex, :con, :int, :wis, :cha)
  end
end
