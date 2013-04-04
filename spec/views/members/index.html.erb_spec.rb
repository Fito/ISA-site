require 'spec_helper'

describe "members/index" do
  before(:each) do
    assign(:members, [
      stub_model(Member,
        :first_name => "First Name",
        :last_name => "Last Name",
        :picture_url => "Picture Url",
        :email => "Email"
      ),
      stub_model(Member,
        :first_name => "First Name",
        :last_name => "Last Name",
        :picture_url => "Picture Url",
        :email => "Email"
      )
    ])
  end

  it "renders a list of members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
