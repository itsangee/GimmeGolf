require 'pry'

class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
    @courses = Course.all
  end

  def index
    # binding.b
  # The `geocoded` scope filters only flats with coordinates
    if params[:location] && params[:location] != ""
      @courses = Course.near(params[:location], 5, units: :km)

    elsif params[:location] && params[:query]
      booked_date = DateTime.parse(params[:query])
      # location = Location.parse(params[:query])
      @courses = Course.near(params[:location], 5, units: :km)
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
    elsif params[:query] && params[:query] != ""
        # @search = params[:search]
        # booked_date = DateTime.parse(@search)
        # @bookings = Booking.where(datetime: booked_date)
        # courses_arr = []
        # @bookings.each do |book|
        #   courses_arr << book.course
        # end
        # @courses = Course.all - courses_arr
        booked_date = DateTime.parse(params[:query])
        # location = Location.parse(params[:query])
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

    # location value exist . check nearest location and show


    # data and location exist look for available slots and near locations

    else
      @courses = Course.all
    end
    @markers = @courses.geocoded.map do |course|
      {
        lat: course.latitude,
        lng: course.longitude,
        info_window: render_to_string(partial: "info_window", locals: {course: course}),
        image_url: helpers.asset_url("golf-ball-tee-solid.svg")
      }
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
  end
end
