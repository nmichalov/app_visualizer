class CreateNamespaceMethods < ActiveRecord::Migration
  def change
    create_table :namespace_methods do |t|
      t.string :name
      t.integer :namespace_id
      t.integer :app_file_id
    end
  end
end
