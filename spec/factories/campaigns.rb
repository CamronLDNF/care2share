FactoryBot.define do
  factory :campaign do
    title { "MyString" }
    description { "MyText" }
    amount_raised { "9.99" }
    user
  end
end
