class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @studios = Studio.geocoded
    @search = params["search"]
    if @search.present?
      @location = @search["location"]
      @studios = Studio.where("address ILIKE ?", "%#{@location}%")
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
