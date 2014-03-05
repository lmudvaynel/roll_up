class CreateStands < ActiveRecord::Migration
  def change
    create_table :stands do |t|
      t.text :content
      t.timestamps
    end
  end
end
