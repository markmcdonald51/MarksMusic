require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :skype => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_first_name[name=?]", "person[first_name]"
      assert_select "input#person_last_name[name=?]", "person[last_name]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_phone[name=?]", "person[phone]"
      assert_select "input#person_skype[name=?]", "person[skype]"
      assert_select "textarea#person_description[name=?]", "person[description]"
    end
  end
end
