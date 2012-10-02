class Page < ActiveRecord::Base
	
  belongs_to :admin

  has_many :comments, :as => :parent  
  has_many :page_block_kinds

  attr_accessible :title

end
