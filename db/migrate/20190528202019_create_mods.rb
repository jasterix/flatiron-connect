class CreateMods < ActiveRecord::Migration[5.2]
  def change
    create_table :mods do |t|
      t.integer :mod_number
      t.string :mod_description

      t.timestamps
    end
  end
end
