class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent, :polymorphic => true
  attr_accessible :comment, :parent_id, :parent_kind
end
