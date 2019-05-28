class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :student_id
      t.integer :mod_id

      t.timestamps
    end
  end
end
