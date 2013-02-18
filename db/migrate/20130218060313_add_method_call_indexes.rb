class AddMethodCallIndexes < ActiveRecord::Migration
  def up
    add_index :method_calls, :app_file_id
    add_index :method_calls, :namespace_id
    add_index :method_calls, :namespace_method_id
  end

  def down
    remove_index :method_calls, :app_file_id
    remove_index :method_calls, :namespace_id
    remove_index :method_calls, :namespace_method_id
  end
end
