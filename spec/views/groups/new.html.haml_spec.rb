require 'spec_helper'

describe "groups/new" do
  before(:each) do
    assign(:group, stub_model(Group,
      :name => "MyString",
      :closed => false,
      :created_by => nil
    ).as_new_record)
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do
      assert_select "input#group_name[name=?]", "group[name]"
      assert_select "input#group_closed[name=?]", "group[closed]"
      assert_select "input#group_created_by[name=?]", "group[created_by]"
    end
  end
end
