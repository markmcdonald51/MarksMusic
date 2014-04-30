
class Venue < ActiveRecord::Base     
  has_one :location, as: :locatable
  accepts_nested_attributes_for :location
  has_many :events
  validates_presence_of :name

  before_save :format_venue
  
  def format_venue
    self[:contact_name] = self[:contact_name].titleize
    self[:name]         = self[:name].titleize
    #self[:phone]        = self[:phone].number_to_phone 
  end
end
