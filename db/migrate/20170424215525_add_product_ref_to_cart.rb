class AddProductRefToCart < ActiveRecord::Migration[5.0]
  def change
    add_reference :carts, :product, foreign_key: true
  end
end
