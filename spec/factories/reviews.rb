FactoryBot.define do
  factory :review do
    customer { nil }
    product { "" }
    comment { "MyText" }
  end
end
