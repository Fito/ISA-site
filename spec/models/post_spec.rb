require 'spec_helper'

describe Post do
  before do
    @post = Post.new(:title => 'Test Post', :content => 'Post for testing purposes')
    @admin = Admin.new(:email => 'my@email', :password => 'mypassword')
    @attachment = Attachment.new(:url => 'my_url', :file_type => 'jpg')
    @attachment.post = @post
    @attachment.save!
    @post.admin = @admin
  end
  
  it 'Should belong to an admin' do
    @post.admin.should_not be_nil
  end
  
  it 'Should belong to the right admin' do
    @post.admin.should == @admin
  end
  
  it 'Should have an array of attachments' do
    @post.attachments.class.should == Array
  end
  
  it 'Should have the right attachments' do
    @post.attachments.should include(@attachment)
  end
end
