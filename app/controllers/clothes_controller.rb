class ClothesController < ApplicationController
  def index
    @search = Clothe.search(params[:q])
    @clothes = @search.result.page(params[:page])
  end

  def show
    @clothe = Clothe.find(params[:id])
  end
end
