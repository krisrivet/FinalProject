class ClothesController < ApplicationController
  def index
    @clothes = Clothe.order(:name).page(params[:page])
  end

  def show
    @clothe = Clothe.find(params[:id])
  end
end
