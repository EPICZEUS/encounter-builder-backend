class Api::V1::EncountersController < ApplicationController
  before_action :find_encounter, only: [:show, :edit, :update, :destroy]

  def index
    @encounters = Encounter.all
    render json: @encounters
  end

  def show
    render json: @encounter
  end

  def new
    @encounter = Encounter.new
  end

  def create
    @encounter = Encounter.create(encounter_params)
    if @encounter.valid?
      render json: @encounter, status: :accepted
    else
      render json: { errors: @encounter.errors.full_messages }, status: :unprocessible_entity
    end
  end

	def edit
	  #code
	end

	def update
	  if @encounter.update(encounter_params)
			render json: @encounter, status: :accepted
		else
			render json: { errors: @encounter.errors.full_messages }, status: :unprocessible_entity
		end
	end

	def destroy
	  @encounter.destroy
		render json: @encounters
	end

  private

  def encounter_params
    params.permit(:name, :description, player_ids: [], creature_ids: [])
  end

  def find_encounter
    @encounter = Encounter.find(params[:id])
  end
end
