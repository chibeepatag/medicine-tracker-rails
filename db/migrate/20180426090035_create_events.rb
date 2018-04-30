class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :patient_id
      t.date :event_date
      t.string :severity
      t.string :organ
      t.string :reaction

      t.timestamps
    end
  end
end
