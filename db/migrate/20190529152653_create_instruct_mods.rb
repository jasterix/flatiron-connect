class CreateInstructMods < ActiveRecord::Migration[5.2]
  def change
    create_table :instruct_mods do |t|
      t.belongs_to :mods, foreign_key: true
      t.belongs_to :instructors, foreign_key: true

      t.timestamps
    end
  end
end
