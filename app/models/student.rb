class Student < ActiveRecord::Base
    #before viewing student info, set up permissions for teachers, paraPros, etc
    before_save { self.email_address = email_address.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email_address, presence: true, length: { maximum: 255 },
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
    #attr_accessible :fname, lname
    
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Student.create! row.to_hash
        end
    end
    
    def present
        #@student = Student.find(params[:id])
    end
end
