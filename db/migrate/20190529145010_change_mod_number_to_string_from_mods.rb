class ChangeModNumberToStringFromMods < ActiveRecord::Migration[5.2]
  def change
    change_column :mods, :mod_number, :string
  end
end
