class LineItem < ActiveRecord::Base
    include Payola::Sellable
  belongs_to :product
  belongs_to :cart

end
