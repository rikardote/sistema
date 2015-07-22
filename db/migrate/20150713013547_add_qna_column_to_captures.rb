class AddQnaColumnToCaptures < ActiveRecord::Migration
  def change
    add_column :captures ,:qna_id,:integer
  end
end
