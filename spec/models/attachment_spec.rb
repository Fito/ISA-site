require 'spec_helper'

describe Attachment do
  before do
    @post = Post.new(:title => 'Test Post', :content => 'Post for testing purposes')
    @attachment = Attachment.new(:url => 'my_url', :file_type => 'jpg')
    @attachment.post = @post
    @attachment.save!    
  end
  
  it 'Should belong to a post' do
    @attachment.post.should_not be_nil
  end
  
  it 'Should belong to the right post' do
    @attachment.post.should == @post
  end
end
