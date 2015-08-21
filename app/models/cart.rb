class Cart < ActiveRecord::Base

  has_many :itemcarts
  has_many :products, through: :itemcarts


end
