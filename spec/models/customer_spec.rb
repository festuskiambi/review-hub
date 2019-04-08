require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:user_name) }
  it { should validate_uniqueness_of(:user_name) }
end