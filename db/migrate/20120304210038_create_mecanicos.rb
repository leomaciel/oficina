class CreateMecanicos < ActiveRecord::Migration
  def change
    create_table :mecanicos do |t|
      t.string :nome
      t.string :telefone
      t.string :especialidade

      t.timestamps
    end
  end
end
