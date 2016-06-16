class EventsController < ApplicationController
    before_action :logged_in_user
    
    def new
        @event = Event.new
    end
    
    def create
        @event = Event.new(event_params)
        @event.save
        redirect_to @event
    end
    
    def index
        @events = Event.paginate(page: params[:page])
    end
    
    def show
        @event = Event.find(params[:id])
        @event_attendance_records = @event.event_attendance_records
        @events = Event.paginate(page: params[:page])
    end
    
    def edit
        @event = Event.find(params[:id])
    end
    
    def update
        @event = Event.find(params[:id])
        if @event.update_attributes(event_params)
            flash[:success] = "Event updated"
            redirect_to @event
        else
            render 'edit'
        end
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
