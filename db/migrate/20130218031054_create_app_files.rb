class CreateAppFiles < ActiveRecord::Migration
  def change
    create_table :app_files do |t|
      t.integer :app_directory_id
      t.string :name

      t.timestamps
    end
  end
end
