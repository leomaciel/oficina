class CreateItemservicos < ActiveRecord::Migration
  def change
    create_table :itemservicos do |t|
      t.string :nomeitem
      t.string :precoitem
      t.references :mecanico
      t.references :servico

      t.timestamps
    end
    add_index :itemservicos, :mecanico_id
    add_index :itemservicos, :servico_id
  end
end
