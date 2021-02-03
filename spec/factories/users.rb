FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
    gender_id             { 1 }
    profile               {'Hello'}
  end
end