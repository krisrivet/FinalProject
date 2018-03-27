class BasketballsController < ApplicationController
  def index
    @basketballs = Basketball.order(:name).page(params[:page])
  end

  def show
    @basketball = Basketball.find(params[:id])
  end
end
