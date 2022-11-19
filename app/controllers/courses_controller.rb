class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def index
    # binding.b
    if params[:search]
      @search = params[:search]
      booked_date = DateTime.parse(@search)
      @courses = Course.where(datetime: booked_date)
    # else
    #   @courses = Course.all
    end
  end

  def show
    @course = Course.find(params[:id])
    @booking = Booking.new
  end
end
