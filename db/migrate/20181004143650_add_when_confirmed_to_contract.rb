class AddWhenConfirmedToContract < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :whenconfirmed, :datetime
  end
end
