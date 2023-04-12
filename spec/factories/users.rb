FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { 'test@example' }
    first_name            { '表' }
    last_name             { '颯太' }
    read_first_name       { 'オモテ' }
    read_last_name        { 'ソウタ' }
    birthday              { '2003-05-13' }
    password              { 'abc012' }
    password_confirmation { password }
  end
end
