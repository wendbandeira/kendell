class CreateFuncionarios < ActiveRecord::Migration
  def self.up
    create_table :funcionarios do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.string :endereco
      t.string :telefone
      t.datetime :data_entrada
      t.boolean :status
      t.references :cargo
      t.references :cidade

      t.timestamps
    end
  end

  def self.down
    drop_table :funcionarios
  end
end
