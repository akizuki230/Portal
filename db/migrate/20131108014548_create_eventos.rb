class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :lugar
      t.date :fecha
      t.text :contenido
      t.string :imagen

      t.timestamps
    end
  end
end
