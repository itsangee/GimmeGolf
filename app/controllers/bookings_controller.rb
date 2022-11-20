class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    # binding.b
    @booking = Booking.new(booking_params)
    @course = Course.find(params[:course_id])
    # @booking = Booking.new(booking_params)
    @booking.course = @course
    @booking.user = current_user
    if @booking.save
      redirect_to courses_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to courses_path(@booking.course), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:datetime)
  end
end
