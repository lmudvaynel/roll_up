class AddGalleryNamesInPages < ActiveRecord::Migration
  def change
  	add_column :pages, :gallery_top_name, :string
  	add_column :pages, :gallery_bot_name, :string
  end
end
