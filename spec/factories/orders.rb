FactoryBot.define do
  factory :order do
    trip { nil }
    buyer { nil }
    seller { nil }
    reciept { "MyString" }
    payment_id { "MyString" } 
  end
end
