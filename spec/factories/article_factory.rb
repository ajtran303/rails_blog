FactoryBot.define do
  factory :article do
    title { Faker::Commerce.product_name }
    body { Faker::Lorem.paragraphs(number: 4) }
  end
end