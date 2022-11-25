class AttendeesController < ApplicationController

  def create
    @attendee = Attendee.new
    @booking = Booking.find(params[:id])
    @attendee.booking = @booking
    # @attendee.user = current_user
    if @attendee.save
      redirect_to booking_path
    end
  end

end
