class AddSomeToGalery < ActiveRecord::Migration
  def change
  	add_column :gallery_tops, :page_id, :integer
  	add_attachment :gallery_tops, :image
  end
end
