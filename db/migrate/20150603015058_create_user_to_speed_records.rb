class CreateUserToSpeedRecords < ActiveRecord::Migration
  def change
    create_table :user_to_speed_records do |t|
      t.integer :user_id
      t.integer :speed_record_id

      t.timestamps
    end
  end
end
