# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group_member do
    group nil
    person nil
    position 1
    description "MyString"
  end
end
