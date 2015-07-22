class Addand < ActiveRecord::Migration
  def change
    remove_column :captures, :capturado_por, :string
    add_column :captures, :user_id, :integer
  end
end
