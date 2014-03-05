class AddSomeToGaleryTop < ActiveRecord::Migration
  def change
  	add_column :gallery_bots, :page_id, :integer
  	add_attachment :gallery_bots, :image
  end
end
