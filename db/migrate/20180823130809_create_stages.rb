class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.belongs_to :exercise, index: true, null: false

      t.string :name, null: false
      t.string :description, null: true
      t.string :video_link, null: true
      t.integer :order, null: false

      t.timestamps
    end
  end
end
