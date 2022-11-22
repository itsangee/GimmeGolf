class Course < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  has_many :slots
  # attribute :slot_id

  def slots_collection
    # return all slots for course instance
    self.slots.map { |slot| slot.start_time}
  end
end
