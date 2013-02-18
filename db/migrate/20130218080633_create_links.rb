class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :origin_view_file_id
      t.integer :target_view_file_id
    end
  end
end
