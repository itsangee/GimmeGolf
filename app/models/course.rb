class Course < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  has_many :slots
  attribute :slot_id
end
