class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :mod
      t.integer :mod_id

      t.timestamps
    end
  end
end
