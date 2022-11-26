class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @player = User.find(params[:id])
    @user = current_user
    @bookings = Booking.where(user_id: @player)
    @follow = Follow.new
    @today = Date.today
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to user_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to user_path }
        format.js { render action: :follow }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
