class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  validates :comment, length: { minimum: 20 }
  validates_inclusion_of :rating, in: 1..5
end
