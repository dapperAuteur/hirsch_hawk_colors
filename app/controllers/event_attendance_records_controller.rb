class EventAttendanceRecordsController < ApplicationController
  before_action :logged_in_user
  
  def new
    @event_attendance_record = EventAttendanceRecord.new
  end
  
  def create
    
  end
  
  def index
    @event_attendance_record = EventAttendanceRecord.paginate(page: params[:page])
  end

  def show
    @event_attendance_record = EventAttendanceRecord.find(params[:id])
  end

  def edit
    @event_attendance_record = EventAttendanceRecord.find(params[:id])
  end
  
  def update
    @event_attendance_record = EventAttendanceRecord.find(params[:id])
    if @event_attendance_record.update_attributes(event_attendance_record_params)
      flash[:success] = "Event Attendance Record updated"
      redirect_to @event_attendance_record
    else
      render 'edit'
    end
  end
  
  def present_toggle
    ear = EventAttendanceRecord.find(params[:id])
    ear.present_toggle
    redirect_to ear.event
  end
  
  def fed_toggle
    
  end
  
  def milk_only_toggle
    
  end
  
  def brought_lunch_toggle
    
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
  
    def event_attendance_record_params
      params.require(:event_attendance_record).permit(:id)
    end
    
    def student_params
      params.require(:student).permit(:id, :fname, :lname, :my_teacher, :grade)
    end
end
