class AddIndexToFolders < ActiveRecord::Migration[7.0]
  def change
    add_index :folders, :parent_folder_ids, using: 'gin'

  end
end
