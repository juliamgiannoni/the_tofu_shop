class AddCustomerRefToCart < ActiveRecord::Migration[5.0]
  def change
    add_reference :carts, :customer, foreign_key: true
  end
end
