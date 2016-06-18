class EventAttendanceRecord < ActiveRecord::Base
  belongs_to :event
  belongs_to :student
  
  def present_toggle
    self.present = !self.present
    self.save
  end
  
  def fed_toggle
    self.fed = !self.fed
    self.save
  end
  
  def milk_only_toggle
    self.milk_only = !self.milk_only
    self.save
  end
  
  def brought_lunch_toggle
    self.brought_lunch = !self.brought_lunch
    self.save
  end
  
  private
  
end
