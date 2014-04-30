# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :occurrence do
    started_at "2014-04-06 11:44:01"
    expired_at "2014-04-06 11:44:01"
    generated false
    canceled_at "2014-04-06 11:44:01"
  end
end
