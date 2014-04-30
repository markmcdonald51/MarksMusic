class Location < ActiveRecord::Base
  belongs_to :locatable, polymorphic: true  
  validates_presence_of :address_one, :postal_code
    
  validate :validiate_location, unless: Proc.new{|addr|
     addr.address_one.blank? || addr.postal_code.blank?}
    
  acts_as_mappable :default_units       => :miles,
                   :default_formula     => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name     => :lat,
                   :lng_column_name     => :lng
    
  def validiate_location
    @address_string ||= [:address_one, :postal_code].map{|f| self.send(f)}.join(',')
    
    res = Geokit::Geocoders::GoogleGeocoder.geocode(@address_string)
   
    if (res.success && [:address, :building].include?(res.precision.to_sym))

      self.address_one  = res.street_address
      self.postal_code  = res.zip.gsub(/\s+/,'')
      self.city         = res.city
      self.state        = res.state
      self.country      = res.country_code
      
      self.precision    = res.precision
      self.provider     = res.provider
      
      self.lat          = res.lat
      self.lng          = res.lng 
      
     return true
    elsif military_address?
      return true
    else
      self.errors.add :base, 'Sorry the address is not valid'
    end
  end

  def military_address?
    return false if state.blank? || city.blank? || postal_code.blank?
    
    (%w(ae aa ap).include?(state.try(:downcase)) and
            postal_code =~ /^0/ and
            %w(apo fpo).include?(city.downcase))
  end

end
