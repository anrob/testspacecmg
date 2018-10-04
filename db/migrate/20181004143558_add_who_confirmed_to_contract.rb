class AddWhoConfirmedToContract < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :whoconfirmed, :string
  end
end
