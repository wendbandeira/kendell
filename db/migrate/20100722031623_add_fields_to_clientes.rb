class AddFieldsToClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :data_cadastro, :string
  end

  def self.down
    remove_column :clientes, :data_cadastro
  end
end
