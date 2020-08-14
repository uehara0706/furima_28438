FactoryBot.define do
  factory :user do
    nickname              {"aaa"}
    email                 {"aaa@gmail.com"}
    password              {"00000000"}
    password_confirmation {password}
    first_name {"aa"}
    first_name_kana {"アア"}
    last_name {"aa"}
    last_name_kana {"アア"}
    birth_date {"1930.0.0."}
  end
end