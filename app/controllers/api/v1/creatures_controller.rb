class Api::V1::CreaturesController < ApplicationController
  before_action :find_creature, only: [:show]

  def index
    @creatures = Creature.all
    render json: @creatures
  end

  def show
    render json: @creature
  end

  private

  def find_creature
    @creature = Creature.find(params[:id])
  end
end
