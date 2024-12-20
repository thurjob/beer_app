FactoryBot.define do
  factory :food do
    name { "Pizza" }
  end
  
  factory :drink do
    name { "Cerveja" }
  end

  factory :food_pairing do
    association :beer
  end
end


