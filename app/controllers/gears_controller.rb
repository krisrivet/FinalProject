class GearsController < ApplicationController
  def index
    @gears = Gear.order(:name).page(params[:page])
  end

  def show
    @gear = Gear.find(params[:id])
  end
end
