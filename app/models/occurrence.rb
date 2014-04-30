class Occurrence < ActiveRecord::Base
  belongs_to :event 
  #attr_accessible :started_at, :expired_at
  #attr_accessible :generated # helps me tell which occurrences are out of an ice_cube generated serie
  #attr_accessible :canceled_at
end
