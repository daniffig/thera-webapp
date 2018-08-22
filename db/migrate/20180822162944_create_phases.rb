class CreatePhases < ActiveRecord::Migration[5.2]
  def change
    create_table :phases do |t|
      t.string :name, null: false
      t.integer :number, index: true, unique: true, null: false

      t.timestamps
    end
  end
end
