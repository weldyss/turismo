class AddMaisDetalhesAoPacote < ActiveRecord::Migration
  def self.up
    add_column :pacotes, :locomocao, :string
  end

  def self.down
    remove_column :pacotes, :locomocao
  end
end
