class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
      t.references :patient
      t.references :antibiotic
      t.references :dose
      t.references :frequency
      t.references :route
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
