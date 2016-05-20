class AddIndexToUsersStaff < ActiveRecord::Migration
  
  def change
    add_index :users, :staff, unique: false
  end
end
