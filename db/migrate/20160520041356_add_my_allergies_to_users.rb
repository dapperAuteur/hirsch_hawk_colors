class AddMyAllergiesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_allergies, :text
  end
end
