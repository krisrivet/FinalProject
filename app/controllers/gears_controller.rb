class GearsController < ApplicationController
  def index
    @gears = Gear.order(:name)
  end

  def show
    @gear = Gear.find(params[:id])
  end
end

