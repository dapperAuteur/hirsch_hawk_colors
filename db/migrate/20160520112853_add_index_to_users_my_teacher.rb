class AddIndexToUsersMyTeacher < ActiveRecord::Migration
  
  def change
    add_index :users, :my_teacher, unique: false
  end
end
