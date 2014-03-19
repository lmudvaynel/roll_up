class AddTitleAndALtToGal < ActiveRecord::Migration
  def change
  	add_column :gallery_tops, :alt, :string
  	add_column :gallery_tops, :title, :string
  	add_column :gallery_bots, :alt, :string
  	add_column :gallery_bots, :title, :string
  end
end
