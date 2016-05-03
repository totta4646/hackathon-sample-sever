class CreatePictureTable < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :path, :null => false
      t.string :extention, :null => false
      t.integer :width, :null => false
      t.integer :height, :null => false
      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
