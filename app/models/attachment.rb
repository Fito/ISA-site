class Attachment < ActiveRecord::Base
  attr_accessible :file_type, :post_id, :url
  belongs_to :post
  
  def self.new_from_urls(attachments_urls)
    attachments = []
    (attachments_urls.values.reject { |url| url == '' }).each do |url|
      attachment = Attachment.new
      attachment.url = url
      attachment.file_type = url[/\w+$/]
      attachments.push(attachment)
    end
    
    attachments
  end
end
