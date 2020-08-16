FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    first_name {"ああ"}
    first_name_kana {"アア"}
    last_name {"ああ"}
    last_name_kana {"アア"}
    birth_date {"1930-01-01"}
  end
end