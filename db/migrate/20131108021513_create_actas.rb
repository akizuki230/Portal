class CreateActas < ActiveRecord::Migration
  def change
    create_table :actas do |t|
      t.date :fecha
      t.string :lugar
      t.string :tipo_reunion
      t.text :orden_dia
      t.text :desarrollo
      t.text :concluciones
      t.text :tareas
      t.integer :user_id

      t.timestamps
    end
    add_index :actas, :user_id
  end
end
