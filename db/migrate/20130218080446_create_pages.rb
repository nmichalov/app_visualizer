class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :route
      t.integer :view_file_id
    end
  end
end
