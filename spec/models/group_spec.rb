require 'spec_helper'


describe Group do
  pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
    @valid_group = FactoryGirl.build(:group)  
  end


  it 'should be valid' do     
    @valid_group.should be_valid
    @valid_group.save
    ap @valid_group

    @valid_group.venues << FactoryGirl.create(:venue)
    
    @valid_group.venues << FactoryGirl.create(:venue2)
    
    @valid_group.venues.each do |v|
      ap v
      ap v.location
      
     
    @valid_group.genres << Genre.find([2,3])
    @valid_group.genres.map{|g| ap g }
    
    # e = @valid_group.venues.first.events << FactoryGirl.build(:event)
    # @valid_group.events << e
   
    
    
     
     debugger 
  end
    
    #    << FactoryGirl.build(:event)
    
    
  end
  
end
