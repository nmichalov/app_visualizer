class CreateAppDirectoryNodes < ActiveRecord::Migration
  def change
    create_table :app_directory_nodes do |t|
      t.string :name
      t.integer :parent_directory_node_id
    end
    
    index :app_directory_nodes, :parent_directory_node_id
  end
end
