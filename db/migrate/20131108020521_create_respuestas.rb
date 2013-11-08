class CreateRespuestas < ActiveRecord::Migration
  def change
    create_table :respuestas do |t|
      t.text :respuesta
      t.integer :user_id
      t.integer :articulo_id

      t.timestamps
    end
    add_index :respuestas, :user_id
    add_index :respuestas, :articulo_id
  end
end
