class AddIndemToJobs < ActiveRecord::Migration[5.0]
  def change
    add_index :jobs,  :player_id
  end
end
