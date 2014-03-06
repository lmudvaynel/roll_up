class AddOptions < ActiveRecord::Migration
  def change
  	add_column :size_prices, :color, :string
  	add_column :size_prices, :weight, :string
  end
end
