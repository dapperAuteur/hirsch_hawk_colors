class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :my_teacher
      t.string :grade
      t.integer :student_id
      t.string :email_address, unique: true
      t.date :dob
      t.string :gender
      t.date :entry_date
      t.float :age
      t.string :images
      t.boolean :current_student
      t.text :my_allergies

      t.timestamps null: false
    end
  end
end
