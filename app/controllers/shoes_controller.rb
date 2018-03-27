class ShoesController < ApplicationController
  # GET /Shoes
  def index
    @shoes = Shoe.order(:name).page(params[:page])
  end

  # GET /Shoes/:id
  def show
    @shoe = Shoe.find(params[:id])
  end
end
