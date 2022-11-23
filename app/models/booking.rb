class Booking < ApplicationRecord
  belongs_to :course
  belongs_to :user

  validates :game_start, :date, presence: true
  validates :user_id, presence: true, uniqueness: { scope: [ :date, :game_start ]}

end
