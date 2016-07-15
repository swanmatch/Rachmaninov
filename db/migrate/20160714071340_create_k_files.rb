class CreateKFiles < ActiveRecord::Migration
  def change
    create_table :k_files do |t|


      t.string :parent_type



      t.integer :parent_id



      t.integer :order



      t.string :original_name



      t.string :content_type



      t.text :text



      t.integer :lock_version, default: 0, null: false
      t.integer :created_by
      t.integer :updated_by
      t.integer :deleted_by
      t.datetime :deleted_at


      t.timestamps

    end

    add_index :k_files, :parent_type

    add_index :k_files, :parent_id

  end
end