class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.string :nombre
      t.string :apellido_1
      t.string :apellido_2
      t.text :perfil
      t.integer :telefono
      t.string :imagen
      t.integer :user_id

      t.timestamps
    end
    add_index :integrantes, :user_id
  end
end
