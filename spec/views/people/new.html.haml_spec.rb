require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :skype => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input#person_first_name[name=?]", "person[first_name]"
      assert_select "input#person_last_name[name=?]", "person[last_name]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_phone[name=?]", "person[phone]"
      assert_select "input#person_skype[name=?]", "person[skype]"
      assert_select "textarea#person_description[name=?]", "person[description]"
    end
  end
end
