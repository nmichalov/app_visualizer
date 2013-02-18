class AddAppFileIndexes < ActiveRecord::Migration
  def up
    add_index :app_files, :app_directory_node_id
  end

  def down
    remove_index :app_files, :app_directory_node_id
  end
end
