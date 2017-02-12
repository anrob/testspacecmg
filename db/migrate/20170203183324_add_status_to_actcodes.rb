class AddStatusToActcodes < ActiveRecord::Migration[5.0]
  def change
    add_column :actcodes, :status, :integer, default: 1
  end
end
