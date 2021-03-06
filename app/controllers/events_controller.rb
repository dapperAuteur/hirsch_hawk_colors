class EventsController < ApplicationController
    before_action :logged_in_user
    
    def new
        @event = Event.new
    end
    
    def create
    end
    
    def index
        @events = Event.paginate(page: params[:page])
    end
    
    def show
        @event = Event.find(params[:id])
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
        
        def event_params
            params.require(:event).permit(:name, :classroom, :meal)
        end
        
                

end
