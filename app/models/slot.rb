class Slot < ApplicationRecord
  belongs_to :course
  has_many :bookings
  validates :start_time, :end_time, presence: true

  def todays_bookings_count
    bookings.where(date: Date.today).count
  end

  def available_spaces?(search_date)
    self.bookings.where(date: search_date).count < 4
  end
end


# Way to retrieve slot bookings only FOR TODAY - USE ACTIVE RECORD QUERY IN courses CONTROLLER?
# Show empty if bookings are empty FOR TODAY
# Error message if don't fill form correctly
# How to count up how many users filling a slot? Block more than four users booking a course start_time
# How to get all child elements of loop to be functional with stimulus, not just first item
# Terminal issue, rails c
