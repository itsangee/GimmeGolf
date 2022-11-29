class Review < ApplicationRecord
  belongs_to :course
  belongs_to :user
  validates :content, length: {minimum: 20}, presence: true
  validates :ratings, presence: true
end
