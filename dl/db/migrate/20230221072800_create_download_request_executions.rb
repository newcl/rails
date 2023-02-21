class CreateDownloadRequestExecutions < ActiveRecord::Migration[7.0]
  def change
    create_table :download_request_executions do |t|
      t.references :download_requests, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
