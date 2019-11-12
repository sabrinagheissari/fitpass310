class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  all

  def show
    @booking = Booking.find(params[:id])
  all
end
