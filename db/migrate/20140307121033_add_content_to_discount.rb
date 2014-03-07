class AddContentToDiscount < ActiveRecord::Migration
  def change
  	add_column :discounts, :content, :text
  end
end
