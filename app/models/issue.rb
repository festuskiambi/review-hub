class Issue < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  validates :comment, length: { minimum: 20 }
  validates :status, inclusion: {
                       in: %w(REPORTED INVESTIGATED FIX_IN_PROGRESS FIXED),
                       message: 'Status must be REPORTED, INVESTIGATED, FIX_IN_PROGRESS or FIXED',
                     }
  validates :severity, inclusion: {
                         in: %w(COSMETIC MINOR MAJOR CRITICAL),
                         message: 'Severity must be COSMETIC, MINOR, MAJOR or CRITICAL',
                       }
end
