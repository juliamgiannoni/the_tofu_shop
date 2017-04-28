class Customer < ApplicationRecord

  after_initialize :set_defaults
  has_secure_password
  validates :customer_email, presence: true, uniqueness: true
  has_one :cart
  has_many :products, through: :cart

  def set_defaults
    self.cart = Cart.create({cart_total: 0}) if self.cart.nil?
  end

end
