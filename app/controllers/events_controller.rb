class EventsController < ApplicationController
    before_action :logged_in_user
    
    def new
        @event = Event.new
    end
    
    def create
        puts "What's the name of the event?"
        event.name = $stdin.gets.chomp
    end
    
    private
        #Confirms a logged-in user.
        def logged_in_user
            unless logged_in?
                store_location
                flash[:danger] = "Please log in."
                redirect_to login_url
            end
        end
        
                

end
