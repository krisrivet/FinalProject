class ShoesController < ApplicationController
  # GET /Shoes
  def index
    @search = Shoe.search(params[:q])
    @shoes = @search.result.page(params[:page])
  end

  # GET /Shoes/:id
  def show
    @shoe = Shoe.find(params[:id])
  end
end
