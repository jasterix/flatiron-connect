class RenameInstructModTables < ActiveRecord::Migration[5.2]
  def change
    rename_column :instruct_mods, :mods_id, :mod_id
    rename_column :instruct_mods, :instructors_id, :instructor_id
  end
end
