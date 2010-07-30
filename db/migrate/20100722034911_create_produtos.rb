class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string :data_cadastro
      t.string :nome
      t.string :tamanho
      t.float :valor_compra
      t.float :valor_venda
      t.integer :quantidade
      t.integer :n_nota_fiscal
      t.references :fornecedore
      t.references :categoria

      t.timestamps
    end
  end

  def self.down
    drop_table :produtos
  end
end
