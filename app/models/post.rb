class Post < ActiveRecord::Base
  validates_presence_of :title, :body, :date
  
  has_many :comments
  
  belongs_to :user  
end