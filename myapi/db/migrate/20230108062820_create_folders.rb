class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.string :name
      t.integer :parent_folder_ids, array: true

      t.timestamps
    end
  end
end
