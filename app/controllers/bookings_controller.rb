class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
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
        redirect_to booking_path(@booking)
      else
        # todo
      end
    end
  end

  def accept
    booking = Booking.find(params[:id])
    if booking.slot.todays_bookings_count < 4
      # new_booking = booking.dup
      # new_booking.user = current_user
      new_booking = Booking.create(date: booking.date, user_id: current_user.id, slot_id: booking.slot.id)
      # Turn invite to 'invite_seen' to true
      invitation = Invitation.where(booking_id: booking.id, user_id: current_user.id).first
      invitation.update(invite_seen: true)
      # binding.pry
      if new_booking.present?
        redirect_to booking_path(new_booking)
      else
        # todo
      end
    end
  end


  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to courses_path(@curses), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :slot_id)
  end

end
