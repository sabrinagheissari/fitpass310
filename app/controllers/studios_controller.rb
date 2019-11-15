class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @studios = Studio.geocoded
    @bookings = current_user.bookings
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
    pp @studio
    reviews = @studio.reviews.includes(:course, :user)
    pp reviews
    course_reviews = reviews.group_by { |r| r.course.name }
    pp course_reviews
    @course_teacher_reviews = course_reviews.map { |k,v| [k, v.group_by { |r| r.course.teacher_name } ]}.to_h
    pp @course_teacher_reviews
  end
end


