require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "MyString",
      :description => "MyText",
      :addmission_charge => "9.99",
      :group => nil,
      :venue => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_title[name=?]", "event[title]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_addmission_charge[name=?]", "event[addmission_charge]"
      assert_select "input#event_group[name=?]", "event[group]"
      assert_select "input#event_venue[name=?]", "event[venue]"
    end
  end
end
