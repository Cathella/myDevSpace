FactoryBot.define do
  factory :comment do
    user { nil }
    solution { nil }
    body { "MyText" }
  end
end
