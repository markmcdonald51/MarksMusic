require 'spec_helper'

describe "groups/edit" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :name => "MyString",
      :closed => false,
      :created_by => nil
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do
      assert_select "input#group_name[name=?]", "group[name]"
      assert_select "input#group_closed[name=?]", "group[closed]"
      assert_select "input#group_created_by[name=?]", "group[created_by]"
    end
  end
end
