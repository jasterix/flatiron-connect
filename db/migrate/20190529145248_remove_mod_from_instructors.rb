class RemoveModFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :mod
  end
end
