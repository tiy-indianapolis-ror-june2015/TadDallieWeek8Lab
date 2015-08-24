class Product < ActiveRecord::Base
  include Payola::Sellable
  permalink :name
  attachment :file

  belongs_to :cart
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true

  def self.search(search)
    where("description LIKE ? OR name LIKE ?", "%#{search}%”, “%#{search}%")
  end


end
