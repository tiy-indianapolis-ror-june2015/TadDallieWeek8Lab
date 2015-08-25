class LineItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :cart
  after_save :update_total

  def full_price
    quantity * product.price
  end

  def update_total
   cart.price = cart.reload.line_items.collect{|line| line.full_price}.inject(:+)
   cart.save!
 end

end
