class JerseysController < ApplicationController
  def index
    @jerseys = Jersey.order(:name)
  end

  def show
    @jersey = Jersey.find(params[:id])
  end
end

