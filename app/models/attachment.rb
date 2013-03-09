class Attachment < ActiveRecord::Base
  attr_accessible :file_type, :post_id, :url
  belongs_to :post
end
