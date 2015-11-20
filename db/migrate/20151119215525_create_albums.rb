class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :band_id, null: false
      t.string :live_or_studio, null: false

      t.timestamps null: false
    end
    add_index :albums, :band_id
    add_index :albums, :title
  end
end
