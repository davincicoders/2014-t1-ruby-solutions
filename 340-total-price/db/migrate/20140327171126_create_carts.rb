class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :ship_method_name

      t.timestamps
    end
  end
end
