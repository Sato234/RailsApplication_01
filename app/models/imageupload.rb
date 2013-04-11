class Imageupload < ActiveRecord::Base
  attr_accessible :uploadedimage, :description
  has_attached_file :uploadedimage, :styles => { :medium => "200x200>", :thumb => "50x50>" },
    :default_url => "missing/blue.png",
    :url => "/assets/events/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/events/:id/:style/:basename.:extension"
  
  validates_attachment :uploadedimage, :presence => true,
  :content_type => { :content_type => "image/png" }
  
  attr_accessor :image_file_name
  attr_accessor :image_content_type
  attr_accessor :image_file_size
  attr_accessor :image_updated_at
  
end
