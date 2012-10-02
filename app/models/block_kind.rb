class BlockKind < ActiveRecord::Base
  
  has_many :page_block_kinds

  attr_accessible :description, :title

end
