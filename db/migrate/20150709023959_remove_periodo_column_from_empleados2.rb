class RemovePeriodoColumnFromEmpleados2 < ActiveRecord::Migration
  def change
    remove_column :captures, :period_id, :integer
    add_column :captures, :vacation_id, :integer
  end
end
