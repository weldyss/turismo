class AddDetalhesAoPacote < ActiveRecord::Migration
  def self.up
    add_column :pacotes, :refeicao, :string
  end

  def self.down
    remove_column :pacotes, :refeicao
  end
end
