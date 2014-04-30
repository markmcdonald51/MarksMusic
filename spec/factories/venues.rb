# Read about factories at https://github.com/thoughtbot/factory_girl


  	#417 SE 80th Ave, Portland, OR 97215


FactoryGirl.define do

  factory :venue,   class: Venue do
    name "Montavilla Station"
    phone "(503) 252-3240"
    email "some@mail.com"
    contact_name "John DOe"
    description "Crack Den with cool music"
    association :location, factory: :location, address_one: "417 SE 80th Ave", postal_code: '97215'
  end  
    
  factory :venue2, class: Venue do
    name "Landmark Saloon"
    phone "(503) 894-8132"
    email "some@mail.com"
    contact_name "John H Musslman"
    description "Honky Tonk Music"
    association :location, factory: :location, address_one: "4847 SE Division St", postal_code: '97206'
    # association :events , factory: :event
  end
    
end
