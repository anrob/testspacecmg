class ChangeContractStartDateInContracts < ActiveRecord::Migration[5.0]
  def up
    change_column :contracts, :contract_sent_date, :datetime
  end


  def down
    change_column :contracts, :contract_sent_date, :string
  end
end
