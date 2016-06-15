class AddStudentIdToEventAttendanceRecord < ActiveRecord::Migration
  def change
    add_reference :event_attendance_records, :student, index: true, foreign_key: true
  end
end
