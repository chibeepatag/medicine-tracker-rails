class CreateReactions < ActiveRecord::Migration[5.1]
  def change
    create_table :reactions do |t|
      t.integer :organ_id      
      t.string :name

      t.timestamps
    end
  end
end
