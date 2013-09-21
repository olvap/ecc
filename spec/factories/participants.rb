# -*- encoding : utf-8 -*-

FactoryGirl.define do
  factory :participant do
    address "Rua XYZ"
    full_name  { Faker::Name.name }
    name       { "#{Faker::Name.first_name} da Maria" }
    nickname   { "#{Faker::Name.first_name} da Mamá" }
    email      { Faker::Internet.email "#{name}" }
    phone      { Faker::PhoneNumber.phone_number }
    cel_phone  { Faker::PhoneNumber.phone_number }
    church "IPB Parque"
    couple "Telles da Vera"
    health_obs "Alergia à quiabo"
    children SecureRandom.random_number(5)
  end
end
