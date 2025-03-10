class CreateProductTable < ActiveRecord::Migration[8.0]
  def up
    create_table :products, id: :uuid do |t|
      t.string :name, null: false
      t.decimal :price, precision: 10, scale: 2, default: 0.0, null: false
      t.timestamps
    end
  end

  def down
    drop_table :products
  end
end
