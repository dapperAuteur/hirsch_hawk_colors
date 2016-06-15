class CreateEventAttendanceRecords < ActiveRecord::Migration
  def change
    create_table :event_attendance_records do |t|
      t.references :event, index: true, foreign_key: true
      t.boolean :present
      t.boolean :fed
      t.boolean :milk_only
      t.boolean :brought_lunch
      t.integer :attendance

      t.timestamps null: false
    end
    add_index :event_attendance_records, [:event_id, :created_at]
  end
end
