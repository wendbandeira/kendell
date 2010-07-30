class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :celular
      t.string :telefone_contato
      t.string :email
      t.string :sexo
      t.string :profissao
      t.string :cep
      t.references :cidade

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
