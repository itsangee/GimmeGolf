class Slot < ApplicationRecord
  belongs_to :course
  has_many :bookings, through: :courses
  validates :start_time, :end_time, presence: true

end


# Why is my if/else show page not functioning correctly
# Does slot not have_many bookings through courses? How would we be able to simply see @slot.bookings
# Error message if don't fill form correctly
# How to count up how many users filling a slot?
# Block more than four users booking a course start_time
# How to get all child elements of loop to be functional with stimulus, not just first item
