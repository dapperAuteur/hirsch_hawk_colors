class AddIndexToUsersGrade < ActiveRecord::Migration
  
  def change
    add_index :users, :grade, unique: false
  end
end
