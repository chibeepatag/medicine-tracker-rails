class ChangeEventDateToDatetime < ActiveRecord::Migration[5.1]
  def change
      change_column :events, :event_date, :datetime
  end
end
