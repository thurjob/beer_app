FactoryBot.define do
  factory :beer do
    name { "MyString" }
    description { "MyText" }
    alcohol_content { 1.5 }
    style { "MyString" }
  end
end
