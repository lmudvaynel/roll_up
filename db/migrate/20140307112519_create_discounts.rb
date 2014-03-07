class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
    	t.string :image

      t.timestamps
    end
  end
end
