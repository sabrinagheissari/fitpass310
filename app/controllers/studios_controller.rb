class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @studios = Studio.geocoded
    if params[:search].present?
      @location = params[:search][:location]
      @category = params[:search][:category]
      @studios = Studio.where("address ILIKE ? AND category ILIKE ?", "%#{@location}%", "%#{@category}%")
    end

    @markers = @studios.map do |studio|
      {
        lat: studio.latitude,
        lng: studio.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { studio: studio })
      }
    end
  end

  def show
    @studio = Studio.find(params[:id])
  end
end
