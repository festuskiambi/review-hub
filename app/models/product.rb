class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :issues, dependent: :destroy
  has_many :reviewing_customers, through: :reviews, source: :customer
  has_many :complaining_customers, through: :issues, source: :customer
end
