require 'spec_helper'

describe "members/show" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :first_name => "First Name",
      :last_name => "Last Name",
      :picture_url => "Picture Url",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Picture Url/)
    rendered.should match(/Email/)
  end
end
