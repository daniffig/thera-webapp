class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :stage, index: true, null: false

      t.string :photo, null: false

      t.timestamps
    end
  end
end
