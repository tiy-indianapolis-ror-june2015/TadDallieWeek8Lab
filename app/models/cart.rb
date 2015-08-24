class Cart < ActiveRecord::Base
    include Payola::Sellable
    permalink :price
  has_many :line_items, :dependent => :destroy

  def total
    self.line_items.inject(0){ |sum,x| sum + x.product.price}
  end

end
