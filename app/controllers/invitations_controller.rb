class InvitationsController < ApplicationController

  def invite_user
    @booking = Booking.find(params[:id])
    @user = User.find(params[:user])
    @invitation = Invitation.new(booking: @booking, user: @user)
    @invitation.save!
    redirect_to dashboard_path
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    # raise
    @invitation.destroy
    redirect_to dashboard_path, status: :see_other
  end
  # def invite_seen
  #   self.seen = true
  # end
end
