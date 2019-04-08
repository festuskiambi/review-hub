require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should have_many(:reviews) }
  it { should have_many(:issues) }
  it do
    should have_many(:reviewing_customers).through(:reviews).source(:customer)
  end
  it do
    should have_many(:complaining_customers).through(:issues).source(:customer)
  end
end
