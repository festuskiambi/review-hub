require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to(:product) }
  it { should belong_to(:customer) }
end
