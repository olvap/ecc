# -*- encoding : utf-8 -*-

FactoryGirl.define do
  factory :team do
    name       { Faker::Name.name }
    email      { Faker::Internet.email "#{name}" }
    phone      { Faker::PhoneNumber.phone_number }
    cel_phone  { Faker::PhoneNumber.phone_number }

    address "Rua XYZ"
    church "IP Maranata"
    health_obs ""
  end
end
