FactoryBot.define do
  factory :user do
    firstname { 'firstname' }
    lastname { 'lastname' }
    email { 'email@dot.com' }
    password { 'password' }
  end
end