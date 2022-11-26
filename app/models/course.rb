class Course < ApplicationRecord
  has_many_attached :photos
  has_many :slots
  has_many :bookings, through: :slots
  attribute :slot_id
  has_many :reviews, dependent: :destroy
  # attribute :slot_id

  def slots_collection
    # return all slot times for course instance
    self.slots.map { |slot| [slot.id, slot.start_time.strftime("%I:%M %p")]}
  end


  # def slots
  #   self.slots.map {|slot| slot.id}
  # end

  # validate :banner_count

  # private

  #   def banner_count
  #     errors.add(:base, "No more than 4 bookings per slot") unless self.banners.count == 3
  #   end
end
