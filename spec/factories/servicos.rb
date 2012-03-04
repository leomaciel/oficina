# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :servico do
    data "MyString"
    valor "MyString"
    carro nil
  end
end
