# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :carro do
    modelo "MyString"
    placa "MyString"
    ano "MyString"
    cliente nil
  end
end
