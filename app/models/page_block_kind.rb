class PageBlockKind < ActiveRecord::Base
  belongs_to :page
  belongs_to :block_kind
  # attr_accessible :title, :body
end
