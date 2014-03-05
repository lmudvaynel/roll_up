class CreateGalleryBots < ActiveRecord::Migration
  def change
    create_table :gallery_bots do |t|

      t.timestamps
    end
  end
end
