class Product < ActiveRecord::Base
  include Payola::Sellable

  has_many :itemcarts
  has_many :carts, through: :itemcarts
  belongs_to :user



end
