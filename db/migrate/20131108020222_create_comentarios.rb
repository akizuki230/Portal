class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :comentario
      t.integer :user_id
      t.integer :articulo_id

      t.timestamps
    end
    add_index :comentarios, :user_id
    add_index :comentarios, :articulo_id
  end
end
