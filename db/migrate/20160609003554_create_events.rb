class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.boolean :classroom, default: false
      t.boolean :meal, default: false

      t.timestamps null: false
    end
  end
end
