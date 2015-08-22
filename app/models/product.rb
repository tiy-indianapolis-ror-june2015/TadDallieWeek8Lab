class Product < ActiveRecord::Base
  include Payola::Sellable
  permalink :name
  attachment :file

  belongs_to :cart
  belongs_to :user



end
