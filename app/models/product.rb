class Product < ActiveRecord::Base
  include Payola::Sellable
  permalink :name
  attachment :file



end
