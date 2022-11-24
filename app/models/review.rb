class Review < ApplicationRecord
  belongs_to :course
  validates :content, length: {minimum: 20}
end
