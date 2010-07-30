class CreateFornecedores < ActiveRecord::Migration
  def self.up
    create_table :fornecedores do |t|
      t.string :data_cadastro
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cnpj
      t.string :ins_estadual
      t.string :telefone
      t.string :fax
      t.string :email
      t.string :site
      t.string :cep
      t.references :cidade

      t.timestamps
    end
  end

  def self.down
    drop_table :fornecedores
  end
end
