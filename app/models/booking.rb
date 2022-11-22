class Booking < ApplicationRecord
  belongs_to :course
  belongs_to :user
  # belongs_to :slot
  # has_many :attendees

end
