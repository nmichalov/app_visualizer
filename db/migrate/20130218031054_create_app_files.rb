class CreateAppFiles < ActiveRecord::Migration
  def change
    create_table :app_files do |t|
      t.integer :app_directory_node_id
      t.string :name
    end

    add_index :app_files, :app_directory_node_id
  end
end
