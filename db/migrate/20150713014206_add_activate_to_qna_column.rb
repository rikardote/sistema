class AddActivateToQnaColumn < ActiveRecord::Migration
  def change
    add_column :qnas, :activate, :boolean, default: false
  end
end
