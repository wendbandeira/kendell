class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cidade_id, :integer
    add_column :users, :cargo_id, :integer
  end

  def self.down
    remove_column :users, :cargo_id
    remove_column :users, :cidade_id
  end
end
