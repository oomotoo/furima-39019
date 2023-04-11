FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { 'test@example' }
    first_name            { 'a' }
    last_name             { 'a' }
    read_first_name       { 'a' }
    read_last_name        { 'a' }
    birthday              { '2003-05-13' }
    password              { '000000' }
    password_confirmation { password }
  end
end
