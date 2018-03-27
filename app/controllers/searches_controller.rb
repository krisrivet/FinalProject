class SearchesController < ApplicationController
  def new
    @search = Search.new
    @brands = Basketball.where(brand_id: Brand.distinct.pluck(:brand))
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:keywords, :brand)
  end
end
