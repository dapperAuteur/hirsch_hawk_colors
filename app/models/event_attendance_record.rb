class EventAttendanceRecord < ActiveRecord::Base
  belongs_to :event
  belongs_to :student
  
  def present_toggle
    self.present = !self.present
    self.save
  end
  
  def fed_toggle
    
  end
  
  def milk_only_toggle
    
  end
  
  def brought_lunch_toggle
    
  end
  
  private
  
end
