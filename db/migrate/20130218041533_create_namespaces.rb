class CreateNamespaces < ActiveRecord::Migration
  def change
    create_table :namespaces do |t|
      t.string :namespace
      t.integer :superspace_id
    end

    add_index :namespaces, :superspace_id
  end
end
