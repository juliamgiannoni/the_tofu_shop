class ChangeCartTotalInCarts < ActiveRecord::Migration[5.0]
  def change
    change_column :carts, :cart_total, :integer
  end
end
