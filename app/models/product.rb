class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :issues, dependent: :destroy
  has_many :reviewing_customers, through: :reviews, source: :customer
  has_many :complaining_customers, through: :issues, source: :customer

  def average_ratings
    return 0 if reviews.empty?
    reviews.map { |review| review.rating }.inject(:+) / reviews.size
  end

  def issue_count
    list = issues.map { |issue| issue.severity }
    counts = Hash.new(0)
    list.each { |issue| counts[issue] += 1 }
    counts
  end
end
