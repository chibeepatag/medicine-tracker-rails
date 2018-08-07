class CreateAntibiotics < ActiveRecord::Migration[5.1]
  def change
    create_table :antibiotics do |t|
      t.references :antibiotic_class
      t.string :name

      t.timestamps
    end
  end
end
