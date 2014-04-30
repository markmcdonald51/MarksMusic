# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :group do
    name "Buzz Holland Trio"
    closed true
    created_by nil
    # association :genres, factory: :genre
  end
end
