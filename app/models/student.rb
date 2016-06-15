class Student < ActiveRecord::Base
    #before viewing student info, set up permissions for teachers, paraPros, etc
    #attr_accessor :fname, :lname, :my_teacher, :grade, :email_address, :gender, :age, :images, :current_student, :my_allergies
    has_many :event_attendance_records
    has_many :events, through: :event_attendance_records
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            student = find_by_id(row["id"]) || new
            student.attributes = row.to_hash.slice(*row.to_hash.keys)
            student.save!
        end
    end
    
    def present
        @student = Student.find(params[:id])
    end
end
