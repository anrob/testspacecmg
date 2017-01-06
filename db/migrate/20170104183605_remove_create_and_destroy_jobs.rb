class RemoveCreateAndDestroyJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :create
    remove_column :jobs, :destroy
  end
end
