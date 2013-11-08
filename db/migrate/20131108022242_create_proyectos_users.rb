class CreateProyectosUsers < ActiveRecord::Migration
  def change
    create_table :proyectos_users do |t|
      t.integer :user_id
      t.integer :proyecto_id

      t.timestamps
    end
    add_index :proyectos_users, :user_id
    add_index :proyectos_users, :proyecto_id
  end
end
