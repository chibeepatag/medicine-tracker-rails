class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
      t.integer :patient_id
      t.string :medicine_class
      t.string :antibiotic
      t.string :dose
      t.string :frequency
      t.string :route
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
