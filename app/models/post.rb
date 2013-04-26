class Post < ActiveRecord::Base
  attr_accessible :description, :title
  
  validates :description,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
                  
  has_many :comments
  
end
