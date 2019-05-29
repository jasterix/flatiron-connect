class RemoveModIdFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :mod_id
  end
end
