class CreateAppDirectoryNodes < ActiveRecord::Migration
  def change
    create_table :app_directory_nodes do |t|
      t.integer :parent_node_id
      t.string :name

      t.timestamps
    end
  end
end
