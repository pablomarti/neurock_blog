class Admin < ActiveRecord::Base
  
  has_many :posts
  has_many :pages

  attr_accessible :age, :email, :lastname, :name

end
