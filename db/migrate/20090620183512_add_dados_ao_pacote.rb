class AddDadosAoPacote < ActiveRecord::Migration
  def self.up
    add_column :pacotes, :descricao, :text
  end

  def self.down
    remove_column :pacotes, :descricao
  end
end