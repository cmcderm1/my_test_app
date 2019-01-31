FactoryBot.define do

  factory :user do
    email "peter@example.com"
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false
  end
  
  factory :admin, class: User do
    email "sally@example.com"
    password "987654321"
    first_name "Sally"
    last_name "Example"
    admin false
  end
end
