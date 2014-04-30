require 'spec_helper'

AwesomePrint.irb!

describe Location do
  pending "add some examples to (or delete) #{__FILE__}"
  

  before(:each) do
    @valid_location = FactoryGirl.build(:location)  
  end

  
  it "should validate address" do
    @valid_location.should be_valid
    @valid_location.save
    ap @valid_location

  end
end
