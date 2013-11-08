class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.string :contenido
      t.string :imagen
      t.integer :user_id

      t.timestamps
    end
    add_index :articulos, :user_id
  end
end
