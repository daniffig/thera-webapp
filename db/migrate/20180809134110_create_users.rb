class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, index: true, unique: true, null: false
      t.string :last_session_id

      t.timestamps
    end
  end
end
