class CreateCaptures < ActiveRecord::Migration
  def change
    create_table :captures do |t|
      t.references :empleado, index: true, foreign_key: true
      t.references :incident, index: true, foreign_key: true
      t.date :fecha_inicial
      t.date :fecha_final
      t.string :periodo

      t.timestamps null: false
    end
  end
end
