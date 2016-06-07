class StudentsController < ApplicationController
  def present
    @students = Student.all
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
end
