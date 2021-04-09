FactoryBot.define do
  factory :link do
    user { nil }
    title { "MyString" }
    describe { "MyText" }
    source { "MyString" }
  end
end
