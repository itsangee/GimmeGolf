class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @attendees = Attendee.all
    @attendee = Attendee.new
  end

  def create
    @booking = Booking.new(booking_params)
    @course = Course.find(params[:course_id])
    @booking.course = @course
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to courses_path(@booking.course), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :game_start, :course_id)
  end
end
