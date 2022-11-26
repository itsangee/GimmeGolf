class Course < ApplicationRecord
  has_many_attached :photos
  # has_many :bookings
  has_many :slots
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

  def average_rating
    sum = 0
    count = 0
    self.reviews.each do |review|
      sum += review.ratings
      count += 1
    end
    average = sum / count
  end

  # private

  #   def banner_count
  #     errors.add(:base, "No more than 4 bookings per slot") unless self.banners.count == 3
  #   end
end
