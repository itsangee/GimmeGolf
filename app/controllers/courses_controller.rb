class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @booking = Booking.new
    
  end
end
