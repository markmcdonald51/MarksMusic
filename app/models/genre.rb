class Genre < ActiveRecord::Base

  belongs_to :parent, :class_name => 'Genre'
  has_many :children, :class_name => 'Genre', :foreign_key => :parent_id
  

end
