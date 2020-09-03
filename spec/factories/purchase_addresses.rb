FactoryBot.define do
  factory :purchase_address do
    zip_code {"123-4567"}
    province {2}
    municipalies {"test"}
    street_number {"1-1-1"}
    building_number { 'test' }
    telephone_number {Faker::Number.leading_zero_number(digits: 11)}
    user_id {Faker::Number.within(range: 1..10)}
    item_id {Faker::Number.within(range: 1..10)}
  end
end