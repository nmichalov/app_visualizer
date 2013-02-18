class CreateMethodCalls < ActiveRecord::Migration
  def change
    create_table :method_calls do |t|
      t.string :name

      t.timestamps
    end
  end
end
