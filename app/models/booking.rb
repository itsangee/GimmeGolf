class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :slot
  has_many :invitations, dependent: :destroy
  # belongs_to :course, through: :slot
  validates :slot_id, :date, presence: true
  validates :user_id, presence: true, uniqueness: { scope: [ :date, :slot_id ]}

end
