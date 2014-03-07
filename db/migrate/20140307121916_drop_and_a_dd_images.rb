class DropAndADdImages < ActiveRecord::Migration
	def change
		remove_column :discounts, :content
		remove_column :discounts, :image
		add_attachment :discounts, :image
	end
end
