require 'spec_helper'

describe "members/edit" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :first_name => "MyString",
      :last_name => "MyString",
      :picture_url => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path(@member), :method => "post" do
      assert_select "input#member_first_name", :name => "member[first_name]"
      assert_select "input#member_last_name", :name => "member[last_name]"
      assert_select "input#member_picture_url", :name => "member[picture_url]"
      assert_select "input#member_email", :name => "member[email]"
    end
  end
end
