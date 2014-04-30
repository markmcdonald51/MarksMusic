class Group < ActiveRecord::Base
  belongs_to :created_by
  has_many :group_genres
  has_many :genres, through: :group_genres
  
  has_many :events 
  has_many :venues, through: :events
    
  before_save :format_group
  
  def format_group
    self[:name] = self[:name].titleize
  end
 
end
