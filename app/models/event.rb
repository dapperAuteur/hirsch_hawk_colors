class Event < ActiveRecord::Base
    after_initialize :fill_defaults

  def fill_defaults
    self.name  ||= "Lunch"
    self.classroom ||= false
    puts self.meal
    self.meal = true if self.meal == nil
  end
  
end
