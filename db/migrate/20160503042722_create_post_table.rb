class CreatePostTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.decimal :latitude, :null => false, :precision => 9, :scale => 6
      t.decimal :longitude, :null => false, :precision => 9, :scale => 6
      t.references :picture, index: true, foreign_key: true
      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
