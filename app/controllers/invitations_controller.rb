class InvitationsController < ApplicationController

  def invite_user
    @booking = Booking.find(params[:id])
     @user = User.find(params[:user])
    @invitation = Invitation.new(booking: @booking, user: @user)
    @invitation.save!
    redirect_to dashboard_path
  end

  def invite_seen
    self.seen = true
  end
end
