class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
    @courses = current_user.courses
    @flag = ""
    @past_courses = @courses.where('time < ?', Time.now)
    @upcoming_courses = @courses.where('time > ?', Time.now).order(:time)
  end

  def show
    # Don't think this method is required
  end

  def create
    @course = Course.find(params[:course_id])
    @booking = Booking.new(course: Course.find(params[:course_id]))
    @booking.course = @course
    @booking.user = current_user
    # TODO : change this for curent user once devise is done !!!!
    # @booking.user = User.first
    if @booking.save
      redirect_to bookings_path
    else
      @studios = Studio.all
      render 'studios/index'
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
