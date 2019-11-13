class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
    # Don't think this method is required
  end

  def create
    @session = Session.find(params[:session_id])
    @booking = Booking.new(session: Session.find(params[:session_id]))
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
