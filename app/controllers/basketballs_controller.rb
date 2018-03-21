class BasketballsController < ApplicationController
  def index
    @basketballs = Basketball.order(:name)
  end

  def show
    @basketball = Basketball.find(params[:id])
  end
end
