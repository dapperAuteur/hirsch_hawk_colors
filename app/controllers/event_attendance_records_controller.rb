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
    puts 'in update'
    @event_attendance_record = EventAttendanceRecord.find(params[:id])
    if @event_attendance_record.update_attributes(event_attendance_record_params)
      puts 'success'
      flash[:success] = "Event Attendance Record updated"
      redirect_to @event_attendance_record
    else
      puts 'errors'
      puts event_attendance_record.errors
      render 'edit'
    end
  end
  
  def present_toggle
    ear = EventAttendanceRecord.find(params[:id])
    ear.present_toggle
    redirect_to ear.event
  end
  
  def 
  
  def fed_toggle
    ear = EventAttendanceRecord.find(params[:id])
    ear.fed_toggle
    redirect_to ear.event
  end
  
  def milk_only_toggle
    ear = EventAttendanceRecord.find(params[:id])
    ear.milk_only_toggle
    redirect_to ear.event
  end
  
  def brought_lunch_toggle
    ear = EventAttendanceRecord.find(params[:id])
    ear.brought_lunch_toggle
    redirect_to ear.event
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
      params.require(:event_attendance_record).permit(:present, :brought_lunch, :fed, :milk_only)
    end
    
    def student_params
      params.require(:student).permit(:fname, :lname, :my_teacher, :grade)
    end
end
