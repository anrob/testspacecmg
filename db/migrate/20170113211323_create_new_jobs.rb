class CreateNewJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :player_id
      t.integer :contract_id
      t.string :create
      t.string :destroy

      t.timestamps
    end
    #add_index :jobs :player_id
  end
end
