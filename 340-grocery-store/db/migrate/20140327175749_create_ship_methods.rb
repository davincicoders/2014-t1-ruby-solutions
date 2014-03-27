class CreateShipMethods < ActiveRecord::Migration
  def change
    create_table :ship_methods do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
