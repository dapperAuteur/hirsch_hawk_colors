#class EventU
    # @@no_of_events = 0
    
    # def initialize( id, name)
    #     @event_id = id
    #     @event_name = name
    # end
    
    # def display_details()
    #     puts "Event id is #@event_id."
    #     puts "Event name is #@event_name."
    #     puts "This event took place on #{event.created_at}."
    # end
    
    # attr_accessor :name
    
    # # Create the object
    # # def initialize(attributes = {name: "Lunch"})
    # #     @name = attributes[:name]
    # # end
    
    # def new
    #     @event = Event.new
    # end
    
    # def create
    #     puts "What's the name of the event?"
    #     event.name = $stdin.gets.chomp
    # end
    
class Event
  attr_accessor :name, :classroom, :meal

  def initialize(attributes = {name: "Lunch", classroom: false, meal: true})
    @name  = attributes[:name]
    @class = attributes[:classroom]
    @meal = attributes[:meal]

  end

  

end

# class CreateEvents < ActiveRecord::Migration
#   def change
#     create_table :events do |t|
#       t.string :name
#       t.boolean :classroom, default: false
#       t.boolean :meal, default: false

#       t.timestamps null: false
#     end
#   end
# end
