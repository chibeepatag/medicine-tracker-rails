class CreateAntibioticClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :antibiotic_classes do |t|
      t.string :name
      t.timestamps
    end
  end
end
