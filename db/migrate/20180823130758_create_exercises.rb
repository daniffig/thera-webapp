class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.belongs_to :phase, null: true

      t.string :name, null: false

      t.timestamps
    end
  end
end
