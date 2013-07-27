# -*- encoding : utf-8 -*-

FactoryGirl.define do
  factory :participant do
    address "Rua XYZ"
    phone "4463-9938"
    cel_phone "98873-9217"
    email "joao@ecc.com"
    church "IP PN"
    couple "Telles da Vera"
    health_obs "Alergia à quiabo"
    children 1
    name "João da Maria"
    full_name "João da Silva"
  end
end
