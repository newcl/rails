class UpdateDownloadRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :download_requests, :url, :string
  end
end
