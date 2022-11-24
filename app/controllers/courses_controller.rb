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

  def show
    @course = Course.find(params[:id])
    @slots = @course.slots
    @booking = Booking.new
    # can use sql query here
    @bookings = Booking.all
    # Today's date
    @today = Date.today
    # booking where course is the same, where date is the same, start_time
    @attendee_bookings = Booking.where(course_id: @course).where(date: @today)
    @attendees = @attendee_bookings.map { |attendee| attendee}
    @attendee_count = @attendee_bookings.count
    # binding.pry
  end
end

# How to make query to show people coming on other dates
# How to make query to show people coming for each specific slot
