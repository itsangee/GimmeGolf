class Slot < ApplicationRecord
  belongs_to :course
  # has_many :bookings
  validates :start_time, :end_time, presence: true
end

# Write migration to remove assoc between slot and booking
  # done
# Write migration to change 'datetime' in booking to merely a date
  # done
# Write migration to add a start time to booking
  # done
# Instance class method for course, get all slots and return collection of start times
  # done
# Form?

# block user from booking slot > one time
  # model validation
# Validation to require both fields of booking form to be filled in
# Block more than four users booking a course start_time
