require 'spec_helper'

describe Post do
  before do
    @post = Post.new(:title => 'Test Post', :content => 'Post for testing purposes')
    @admin = Admin.new(:email => 'my@email', :password => 'mypassword')
    @post.admin = @admin
  end
  
  it 'Should belong to an admin' do
    @post.admin.should_not be_nil
  end
  
  it 'Should belong to the right admin' do
    @post.admin.should == @admin
  end
end
