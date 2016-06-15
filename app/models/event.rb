class Event < ActiveRecord::Base
    after_initialize :fill_defaults
    after_create :do_attendance_records
    has_many :event_attendance_records
    has_many :students, through: :event_attendance_records
    
  def total_present
    total_present = 0
    event_attendance_records.each do |p|
      if p.present
        total_present += 1
      end
    end
    return total_present
  end
  
  def total_fed
  end
  
  def do_attendance_records
    Student.all.each do |s|
      ear = s.event_attendance_records.build(event_id: self.id)
      ear.save!
    end
  end

  def fill_defaults
    self.name  ||= "Lunch"
    self.classroom ||= false
    puts self.meal
    self.meal = true if self.meal == nil
  end
  
end
