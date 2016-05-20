class AddIndexToUsersAllergies < ActiveRecord::Migration
  
  def change
    add_index :users, :my_allergies, unique: false
  end
end
