require 'rails_helper'

RSpec.describe Issue, type: :model do
  it { should belong_to(:product) }
  it { should belong_to(:customer) }
  it { should validate_length_of(:comment).is_at_least(20) }
  it do
    should validate_inclusion_of(:status).
             in_array(%w(REPORTED INVESTIGATED FIX_IN_PROGRESS FIXED)).
             with_message('Status must be REPORTED, INVESTIGATED, FIX_IN_PROGRESS or FIXED')
  end
  it do
    should validate_inclusion_of(:severity).
             in_array(%w(COSMETIC MINOR MAJOR CRITICAL)).
             with_message('Severity must be COSMETIC, MINOR, MAJOR or CRITICAL')
  end
end
