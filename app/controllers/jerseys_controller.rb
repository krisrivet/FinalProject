class JerseysController < ApplicationController
  def index
    @jerseys = Jersey.order(:name).page(params[:page])
  end

  def show
    @jersey = Jersey.find(params[:id])
  end
end
