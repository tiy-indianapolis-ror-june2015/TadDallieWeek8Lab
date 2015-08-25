class Product < ActiveRecord::Base
  include Payola::Sellable
  permalink :name
  attachment :file
  before_destroy :not_in_cart
  has_many :line_items
  has_many :carts, :through => :line_items

  validates :name, presence: true

  validates :description, presence: true

  def self.search(search)
    where("description LIKE ? OR name LIKE ?", "%#{search}%”, “%#{search}%")
  end

  def not_in_cart
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line items present"
      return false
    end
  end

end
