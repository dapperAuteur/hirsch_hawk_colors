class EventAttendanceRecord < ActiveRecord::Base
  belongs_to :event
  belongs_to :student
  
  private
  
end
