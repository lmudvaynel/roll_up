class CreateSizePrices < ActiveRecord::Migration
  def change
    create_table :size_prices do |t|
      t.string :name
      t.string :size
      t.string :price
      t.timestamps
    end
  end
end
