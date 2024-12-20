class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]

  def index+
    @beers = Beer.all
    render json: @beers
  end

  def show
    render json: @beer
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  def update
    if @beer.update(beer_params)
      render json: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @beer.destroy
  end

  private
    def set_beer
      @beer = Beer.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :description, :alcohol_content, :style)
    end
end

