FactoryBot.define do
    factory :product do
      association :user 
      product_name  { "rahul" }
      price { Faker::Number.between(from: 1, to: 50) }
      description { "sdnjkfhbsfdjkhgbjksgfjk" }
    end
  end
  
  FactoryBot.define do
    factory :user do
      role  { "admin" }
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end
  end


