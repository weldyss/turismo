class AddDadosHoteis < ActiveRecord::Migration
  def self.up
    add_column :hotels, :endereco, :string
    add_column :hotels, :telefone, :string
  end

  def self.down
    remove_column :hotels, :endereco
    remove_column :hotels, :telefone
  end
end
