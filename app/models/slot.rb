class Slot < ApplicationRecord
  belongs_to :course
  has_many :bookings
  validates :start_time, :end_time, :number_slots, presence: true
end
