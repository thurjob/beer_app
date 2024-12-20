class PubsController < ApplicationController
  before_action :set_pub, only: [:show, :update, :destroy]


  def index
    @pubs = Pub.all
    render json: @pubs
  end


  def show
    render json: @pub
  end

  def create
    @pub = Pub.new(pub_params)
    if @pub.save
      render json: @pub, status: :created, location: @pub
    else
      render json: @pub.errors, status: :unprocessable_entity
    end
  end


  def update
    if @pub.update(pub_params)
      render json: @pub
    else
      render json: @pub.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pub.destroy
    head :no_content
  end

  private
    def set_pub
      @pub = Pub.find(params[:id])
    end

    def pub_params
      params.require(:pub).permit(:name, :location)
    end
end
