require 'spec_helper'

describe Admin do
  before do
    @admin = Admin.new(:email => 'my@email.com', :password => 'passpass', :name => 'my name')
  end
  
  it 'Should have a name' do
    @admin.name.should_not be_nil
  end
  
  it 'Should have the right name' do
    @admin.name.should == 'my name'
  end
end
