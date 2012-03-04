class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :data
      t.string :valor
      t.references :carro

      t.timestamps
    end
    add_index :servicos, :carro_id
  end
end
