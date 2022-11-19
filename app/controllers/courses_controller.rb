class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def index
    if params[:search]
      @search = params[:search]
      @courses = Course.where("name ILIKE ?", "%#{params[:search]}%")
    else
      @courses = Course.all
    end
  end

  def show
    @course = Course.find(params[:id])
    @booking = Booking.new
  end
end
