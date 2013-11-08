class CreateForos < ActiveRecord::Migration
  def change
    create_table :foros do |t|
      t.text :tema
      t.integer :user_id

      t.timestamps
    end
    add_index :foros, :user_id
  end
end
