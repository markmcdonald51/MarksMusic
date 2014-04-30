require 'spec_helper'

describe Venue do
  pending "add some examples to (or delete) #{__FILE__}"
  
  
  before(:each) do
    @valid_venue = FactoryGirl.build(:venue)  
  end

  
  it "should validate address" do
    @valid_venue.should be_valid
    @valid_venue.save
    ap @valid_venue
    ap @valid_venue.location   
  end  
    
  it "should record events " do   
    @valid_venue.events << FactoryGirl.build(:event)   
    @valid_venue.events.length.should == 1           
debugger

    ap @valid_venue.groups  
 
 
  end  
  
  
  
  
end
