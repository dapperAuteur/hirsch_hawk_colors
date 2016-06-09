class StudentsController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user,      only: :destroy
  
  def index
    @students = Student.paginate(page: params[:page])
    #debugger
  #   @students = Student.order(:fname)
  #   respond_to do |format|
  #     format.csv { send_data @students.to_csv }
  #     format.xls # { send_data @products.to_csv(col_sep: "\t") }
    
  end
  
  
  def show
    @student = Student.find(params[:id])
  end
  
  def import
    Student.import(params[:file])
    redirect_to root_url, notice: "Students imported."
  end
  
  private
  
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def student_params
      params.require(:student).permit(:fname, :lname, :my_teacher, :grade, :student_id)
    end
end
