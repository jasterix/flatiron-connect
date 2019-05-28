class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :mod_name
      t.string :mod_start_date
      t.string :github_link
      t.string :linkedin_link

      t.timestamps
    end
  end
end
