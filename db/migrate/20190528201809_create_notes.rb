class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :lecture_name
      t.string :content
      t.string :highlights
      t.integer :student_id
      t.integer :mod_id

      t.timestamps
    end
  end
end
