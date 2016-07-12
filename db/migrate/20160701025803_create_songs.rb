class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|


      t.string :title
      t.references :composer, index: true, foreign_key: true
      t.integer :tempo
      t.integer :key
      t.boolean :scale

      t.integer :lock_version, default: 0, null: false
      t.integer :created_by
      t.integer :updated_by
      t.integer :deleted_by
      t.datetime :deleted_at

      t.timestamps

    end

  end
end
