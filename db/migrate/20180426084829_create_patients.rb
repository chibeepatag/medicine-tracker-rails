class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :urn
      t.string :name

      t.timestamps
    end
  end
end
