class GearsController < ApplicationController
  def index
    @search = Gear.search(params[:q])
    @gears = @search.result.page(params[:page])
  end

  def show
    @gear = Gear.find(params[:id])
  end
end
