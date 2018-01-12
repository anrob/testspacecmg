class AddDidConfirmToContract < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :didconfirm, :string
  end
end
