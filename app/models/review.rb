class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }

  validates :rating, presence: true
  validates :content, presence: true
end
