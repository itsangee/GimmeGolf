

class BookingController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    booking = Booking.new
    course = Course.find(params[:course_id])
    # @booking = Booking.new(booking_params)
    booking.course = course
    booking.user = current_user

    if booking.save
      redirect_to booking_path(booking)
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:course_id, :user_id)
  end
end
