class CreateVendas < ActiveRecord::Migration
  def self.up
    create_table :vendas do |t|
      t.references :produto
      t.references :funcionario
      t.references :cliente
      t.datetime :data_venda
      t.integer :parcelas
      t.integer :quantidade
      t.float :valor_total

      t.timestamps
    end
  end

  def self.down
    drop_table :vendas
  end
end
