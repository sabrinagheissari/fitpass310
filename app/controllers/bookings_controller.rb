class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :delete]

  def index
    @bookings = Booking.all
  end

  def show
    # Don't think this method is required
  end

  def create
    @session = Session.find(params[:session_id])
    @booking = Booking.new(booking_params)
    @booking.session = @session
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
      # else
      # render :controller => "studios", :action => :index
    end
  end

  def delete
    @booking.destroy
    redirect_to booking_path(@booking)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:session_id, :user_id)
  end
end
