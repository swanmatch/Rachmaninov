class CreateComposers < ActiveRecord::Migration
  def change
    create_table :composers do |t|
      t.string :name

      t.integer :lock_version, default: 0, null: false
      t.integer :created_by
      t.integer :updated_by
      t.integer :deleted_by
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
