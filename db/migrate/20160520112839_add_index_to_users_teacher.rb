class AddIndexToUsersTeacher < ActiveRecord::Migration
  
  def change
    add_index :users, :teacher, unique: false
  end
end
