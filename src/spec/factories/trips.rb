FactoryBot.define do
  factory :trip do
    user { nil }
    cabin { nil }
    planet { nil }
    price { 1 }
    description { "MyText" }
    sold { false }
  end
end
