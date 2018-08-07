class CreateReactions < ActiveRecord::Migration[5.1]
  def change
    create_table :reactions do |t|
      t.references :organ
      t.string :name

      t.timestamps
    end
  end
end
