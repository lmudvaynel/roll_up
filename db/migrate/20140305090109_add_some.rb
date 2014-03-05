class AddSome < ActiveRecord::Migration
  def change
	  add_column :size_prices, :page_id, :integer
	  add_column :pages, :stand_id, :integer
   end
end
