class CreateNamespaces < ActiveRecord::Migration
  def change
    create_table :namespaces do |t|
      t.string :namespace

      t.timestamps
    end
  end
end
