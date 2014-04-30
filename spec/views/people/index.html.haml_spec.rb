require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :skype => "Skype",
        :description => "MyText"
      ),
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :skype => "Skype",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Skype".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
