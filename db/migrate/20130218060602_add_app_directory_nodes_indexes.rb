class AddAppDirectoryNodesIndexes < ActiveRecord::Migration
  def up
    add_index :app_directory_nodes, :parent_directory_node_id
  end

  def down
    remove_index :app_directory_nodes, :parent_directory_node_id
  end
end
