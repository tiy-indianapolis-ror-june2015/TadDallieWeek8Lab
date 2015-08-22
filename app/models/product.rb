class Product < ActiveRecord::Base
  include Payola::Sellable
  permalink :name
  attachment :file

  belongs_to :cart
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  def self.search(query)
    where ("name like ?", "%#{query}%")
    where ("description like ?", "%#{query}%")
  end


end
