class FoodPairingsController < ApplicationController
  before_action :set_food_pairing, only: [:show, :update, :destroy]

  def index
    @food_pairings = FoodPairing.all
    render json: @food_pairings
  end


  def show
    render json: @food_pairing
  end

  # POST /food_pairings
  def create
    @food_pairing = FoodPairing.new(food_pairing_params)
    if @food_pairing.save
      render json: @food_pairing, status: :created, location: @food_pairing
    else
      render json: @food_pairing.errors, status: :unprocessable_entity
    end
  end


  def update
    if @food_pairing.update(food_pairing_params)
      render json: @food_pairing
    else
      render json: @food_pairing.errors, status: :unprocessable_entity
    end
  end

  
  def destroy
    @food_pairing.destroy
    head :no_content
  end

  private
    def set_food_pairing
      @food_pairing = FoodPairing.find(params[:id])
    end

    def food_pairing_params
      params.require(:food_pairing).permit(:food_name, :beer_id)
    end
end
