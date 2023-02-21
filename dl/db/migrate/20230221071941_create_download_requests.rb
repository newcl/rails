class CreateDownloadRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :download_requests do |t|
      t.string :path

      t.timestamps
    end
  end
end
