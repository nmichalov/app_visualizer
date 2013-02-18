class AddNamespaceIndexes < ActiveRecord::Migration
  def up
    add_index :namespaces, :superspace_id
  end

  def down
    remove_index :namespaces, :superspace_id
  end
end
