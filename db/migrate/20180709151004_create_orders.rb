class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimalgrand_total :sales_tax
      t.integer :user_id
      t.text :order_items

      t.timestamps
    end
  end
end
