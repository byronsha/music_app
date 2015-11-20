class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :album_id, null: false
      t.string :bonus_or_regular, null: false
      t.text :lyrics, null: false

      t.timestamps null: false
    end
    add_index :tracks, :album_id
    add_index :tracks, :title
  end
end
