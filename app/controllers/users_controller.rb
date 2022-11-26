class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow, :following, :followers]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user_id: @user)
    @today = Date.today
    @future_bookings = @bookings.select { |booking| booking.date > @today}
    @todays_bookings = @bookings.select { |booking| booking.date == @today}
    @past_bookings = @bookings.select { |booking| booking.date < @today}
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
        # format.html { redirect_to user_path }
        format.js { render action: :follow }
      end
    end
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following
    # paginate(page: params[:page])
    redirect_to user_path(@user)

  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    # binding.pry
    @users = @user.followers
    # paginate(page: params[:page])
    # render 'show_follow'
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
