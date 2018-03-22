class ClothesController < ApplicationController
  def index
    @clothes = Clothe.order(:name)
  end

  def show
    @clothe = Clothe.find(params[:id])
  end
end
