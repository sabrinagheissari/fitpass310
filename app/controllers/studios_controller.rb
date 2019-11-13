class StudiosController < ApplicationController
  def index
    @studios = Studio.all
    @search = params["search"]
    if @search.present?
      @location = @search["location"]
      @studios = Studio.where("address ILIKE ?", "%#{@location}%")
    end
  end

  def show
    @studio = Studio.find(params[:id])
  end
end
