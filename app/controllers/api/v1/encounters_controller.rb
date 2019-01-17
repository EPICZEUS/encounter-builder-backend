class Api::V1::EncountersController < ApplicationController
  before_action :find_encounter, only: [:show]

  def index
    @encounters = Encounter.all
    render json: @encounters
  end

  def show
    render json: @encounter
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

  def encounter_params
    
  end

  def find_encounter
    @encounter = Encounter.find(params[:id])
  end
end
