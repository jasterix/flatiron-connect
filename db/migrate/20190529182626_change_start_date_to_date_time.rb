class ChangeStartDateToDateTime < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :mod_start_date, :datetime
  end
end
