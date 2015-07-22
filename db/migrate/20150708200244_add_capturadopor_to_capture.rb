class AddCapturadoporToCapture < ActiveRecord::Migration
  def change
    add_column :captures ,:capturado_por, :string
  end
end
