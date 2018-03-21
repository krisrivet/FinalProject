class JerseysController < ApplicationController
  def index
    @jerseys = Jersey.order(:name)
  end

  def show
    @jerseys = Jersey.find(params[:id])
  end
end

