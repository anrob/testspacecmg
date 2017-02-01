class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :management_id
      t.string :position_type
      t.string :home_phone
      t.string :work_phone
      t.string :cell_phone
      t.string :email
      t.string :regular_rate
      t.integer :actcode_id
      t.boolean :status

      t.timestamps
    end
  end
end
