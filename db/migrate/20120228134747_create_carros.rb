class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :modelo
      t.string :placa
      t.string :ano
      t.references :cliente

      t.timestamps
    end
    add_index :carros, :cliente_id
  end
end
