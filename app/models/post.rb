class Post < ActiveRecord::Base
  attr_accessible :content, :publication_date, :title
  belongs_to :admin
  has_many :attachments
end
