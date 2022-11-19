class Booking < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_many :attendees
end
