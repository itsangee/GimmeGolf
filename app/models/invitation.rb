class Invitation < ApplicationRecord
  belongs_to :booking
  belongs_to :user
end
