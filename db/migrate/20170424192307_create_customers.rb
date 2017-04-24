class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_email
      t.string :password_digest

      t.timestamps
    end
  end
end
