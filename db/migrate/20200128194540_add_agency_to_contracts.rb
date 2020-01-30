class AddAgencyToContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :agency, :string
  end
end
