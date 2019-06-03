class AddAttributesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_price, :decimal
  end
end
