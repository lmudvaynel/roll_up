class CreateGalleryTops < ActiveRecord::Migration
  def change
    create_table :gallery_tops do |t|
      t.timestamps
    end
  end
end
