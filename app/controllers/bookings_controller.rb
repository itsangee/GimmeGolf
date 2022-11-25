class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @attendees = Attendee.all
    @attendee = Attendee.new
  end

  # just determine the count of bookings
  # you need to implement a database constraint

  def create
    @booking = Booking.new(booking_params)
    @course = Course.find(params[:course_id])
    # @slot will come from the dropdown on the form, @course.slots
    # will then be passed over as params
    @slot = Slot.find(params[:booking][:slot_id].to_i)
    @booking.slot = @slot
    @booking.user = current_user
    # binding.pry
    if @slot.todays_bookings_count < 4
      if @booking.save
        redirect_to courses_path
      else
        # todo
      end
   # if @booking.save
      # redirect_to booking_path(@booking)
    # end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to courses_path(@booking.course), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :slot_id, :game_start)
  end
end
