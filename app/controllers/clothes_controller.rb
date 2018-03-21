class ClothesController < ApplicationController
  def index
    @clothes = Clothe.order(:name)
  end

  def show
    @clothes = Clothe.find(params[:id])
  end
end
