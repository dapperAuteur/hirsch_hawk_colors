class AddMyTeacherToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_teacher, :string
  end
end
