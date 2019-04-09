require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to(:product) }
  it { should belong_to(:customer) }
  it { should validate_length_of(:comment).is_at_least(20) }
  it { should validate_inclusion_of(:rating).in_range(1..5) }
end
