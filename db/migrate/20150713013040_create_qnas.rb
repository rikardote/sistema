class CreateQnas < ActiveRecord::Migration
  def change
    create_table :qnas do |t|
      t.integer :qna_cod
      t.string :qna_year

      t.timestamps null: false
    end
  end
end
