# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone "MyString"
    skype "MyString"
    description "MyText"
  end
end
