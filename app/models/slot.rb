class Slot < ApplicationRecord
  belongs_to :course
  # has_many :bookings
  validates :start_time, :end_time, presence: true

end


# Why is my if/else show page not functioning correctly


# Error message if don't fill form correctly
# How to count up how many users filling a slot?
# Block more than four users booking a course start_time
