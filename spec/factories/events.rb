# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "Buzz Holland Happy Hour!"
    description "Cool rockabilly for all"
    addmission_charge "0.00"
    started_at "2014-04-06 11:46:27"
    expired_at "2014-04-06 11:46:27"
    association :group, factory: :group
    association :venue, factory: :venue
  end
end
