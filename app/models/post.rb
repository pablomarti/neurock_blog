class Post < ActiveRecord::Base

  belongs_to :admin

  has_many :comments, :as => :parent

  attr_accessible :description, :title
  
end
