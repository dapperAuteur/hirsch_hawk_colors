class EventAttendanceRecordController < ApplicationController
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
end
