class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def index
    # binding.b
    if params[:search]
      @search = params[:search]
      booked_date = DateTime.parse(@search)
      @bookings = Booking.where(datetime: booked_date)
      courses_arr = []
      @bookings.each do |book|
        courses_arr << book.course
      end
      @courses = Course.all - courses_arr
    else
      @courses = Course.all
    end
  end

  # N + 1 queries. Preloading
  def show
    # @course = Course.find(params[:id])
    @course = Course.includes(slots: :bookings).find(params[:id])
    @slots = @course.slots
    # @slot_id = @slots.map { |slot| slot.id}
    @booking = Booking.new
    # @bookings = Booking.all
    # Today's date
    @today = Date.today
    # binding.pry
    @review = Review.new  # Add this line
  end
end
