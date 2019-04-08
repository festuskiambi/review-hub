require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:user_name) }
  it { should validate_uniqueness_of(:user_name) }
  it { should have_many(:reviews) }
  it { should have_many(:reviewed_products).through(:reviews).source(:product) }
  it { should have_many(:issues) }
  it do
    should have_many(:problematic_products).through(:issues).source(:product)
  end
end
