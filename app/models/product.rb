class Product < ActiveRecord::Base
  include Payola::Sellable
  permalink :name
  attachment :file
  before_destroy :not_in_cart

  has_many :line_items

  def not_in_cart
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line items present"
      return false
    end
  end
end
