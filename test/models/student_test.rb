require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  def setup
    @student = Student.new(fname: "Sample", lname: "Student", student_id: 100100)
  end
  
  test "should be valid" do
    assert @student.valid?
  end
end
