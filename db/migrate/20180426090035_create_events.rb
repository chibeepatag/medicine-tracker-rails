class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :patient
      t.date :event_date
      t.references :severity
      t.references :organ
      t.references :reaction

      t.timestamps
    end
  end
end
