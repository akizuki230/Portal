class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :titulo
      t.text :contenido
      t.string :imagen
      t.string :etapa

      t.timestamps
    end
  end
end
