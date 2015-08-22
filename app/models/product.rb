class Product < ActiveRecord::Base
  include Payola::Sellable

  belongs_to :cart
  belongs_to :user



end
