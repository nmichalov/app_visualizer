class CreateMethodCalls < ActiveRecord::Migration
  def change
    create_table :method_calls do |t|
      t.string :line
      t.integer :line_number
      t.integer :app_file_id
      t.integer :namespace_id
      t.integer :namespace_method_id
    end
  end
end
