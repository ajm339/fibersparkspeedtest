class CreateSpeedRecords < ActiveRecord::Migration
  def change
    create_table :speed_records do |t|
      t.string :ip_address
      t.float :download_speed
      t.float :upload_speed
      t.integer :latency
      t.integer :jitter
      t.string :hostname

      t.timestamps
    end
  end
end
