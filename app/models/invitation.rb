class Invitation < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  def turn_invite_seen
    self.invite_seen = true
  end
end
