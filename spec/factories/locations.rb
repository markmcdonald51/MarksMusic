# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    address_one "1 icon "
    address_two "web dept"
    city "foothill ranch"
    state "california"
    postal_code "92610"
    locatable nil
    md5hash nil
    lat nil
    lng nil
  end
 
end
