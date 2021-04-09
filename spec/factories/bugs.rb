FactoryBot.define do
  factory :bug do
    user { nil }
    title { "MyString" }
    body { "MyText" }
  end
end
