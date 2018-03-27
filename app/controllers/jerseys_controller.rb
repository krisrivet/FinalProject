class JerseysController < ApplicationController
  def index
    @search = Jersey.search(params[:q])
    @jerseys = @search.result.page(params[:page])
  end

  def show
    @jersey = Jersey.find(params[:id])
  end
end
