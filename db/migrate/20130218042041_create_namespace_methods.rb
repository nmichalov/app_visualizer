class CreateNamespaceMethods < ActiveRecord::Migration
  def change
    create_table :namespace_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
