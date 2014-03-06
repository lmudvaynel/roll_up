class DropStand < ActiveRecord::Migration
	def change
		drop_table :stands
	end
end
