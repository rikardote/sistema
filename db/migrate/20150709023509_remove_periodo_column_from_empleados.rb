class RemovePeriodoColumnFromEmpleados < ActiveRecord::Migration
  def change
    remove_column :captures, :periodo, :string
    add_column :captures, :period_id, :integer
  end
end
