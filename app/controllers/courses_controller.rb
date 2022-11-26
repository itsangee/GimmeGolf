require 'pry'

class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def index
    # binding.b
    if params[:query]
      # @search = params[:search]
      # booked_date = DateTime.parse(@search)
      # @bookings = Booking.where(datetime: booked_date)
      # courses_arr = []
      # @bookings.each do |book|
      #   courses_arr << book.course
      # end
      # @courses = Course.all - courses_arr
      booked_date = DateTime.parse(params[:query])
      @courses = Course.all
      puts "before loops #{@courses.count}"
      @courses = @courses.reject do |course|
        var = true
        course.slots.each do |slot|
          puts "slot"
          puts "available #{slot.available_spaces?(booked_date)}"
          var = false if slot.available_spaces?(booked_date)
        end
        var
      end
      puts "after loops #{@courses.count}"
    else
      @courses = Course.all
    end
  end

  # N + 1 queries. Preloading
  def show
    # @course = Course.find(params[:id])
    @course = Course.includes(slots: :bookings).find(params[:id])
    @slots = @course.slots
    @slot = @slots.first
    # @slot_id = @slots.map { |slot| slot.id}
    @booking = Booking.new
    # @bookings = Booking.all
    # Today's date
    @today = Date.today

    # Show only bookings where the date is for today and the slot_id belongs to @course
    # @todays_bookings = Booking.where(date: @today, slot_id: @slot)
    # booking where course is the same, where date is the same, start_time

    # @attendee_bookings = Booking.where(course_id: @course).where(date: @today)
    # @attendees = @attendee_bookings.map { |attendee| attendee}
    # @attendee_count = @attendee_bookings.count
    # binding.pry

    @course = Course.find(params[:id])
    @review = Review.new # Add this line
    # binding.pry
    @review = Review.new  # Add this line
  end
end
