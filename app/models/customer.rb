class Customer < ApplicationRecord
  validates :first_name, presence: true
  validates :user_name, presence: true, uniqueness: true
end
