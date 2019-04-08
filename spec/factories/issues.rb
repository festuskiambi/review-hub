FactoryBot.define do
  factory :issue do
    customer { nil }
    product { "" }
    status { "MyString" }
  end
end
