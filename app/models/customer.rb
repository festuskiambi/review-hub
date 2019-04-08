class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :user_name, presence: true, uniqueness: true
  has_many :reviews
  has_many :issues
  has_many :reviewed_products, through: :reviews, source: :product
  has_many :problematic_products, through: :issues, source: :product
end
