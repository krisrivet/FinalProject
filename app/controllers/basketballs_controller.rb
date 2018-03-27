class BasketballsController < ApplicationController
  def index
    @search = Basketball.search(params[:q])
    @basketballs = @search.result.page(params[:page])
  end

  def show
    @basketball = Basketball.find(params[:id])
  end
end
