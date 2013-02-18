class CreateNamespaceMethods < ActiveRecord::Migration
  def change
    create_table :namespace_methods do |t|
      t.string :name
      t.integer :namespace_id
      t.integer :app_file_id
    end
  
    add_index :namespace_methods, :namespace_id
    add_index :namespace_methods, :app_file_id
  end
end
