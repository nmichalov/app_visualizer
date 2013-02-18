class AddNamespaceMethodsIndexes < ActiveRecord::Migration
  def up
    add_index :namespace_methods, :namespace_id
    add_index :namespace_methods, :app_file_id
  end

  def down
    remove_index :namespace_methods, :namespace_id
    remove_index :namespace_methods, :app_file_id
  end
end
