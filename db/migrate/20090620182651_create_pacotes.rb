class CreatePacotes < ActiveRecord::Migration
  def self.up
    create_table :pacotes do |t|
      t.string :nome
      t.integer :quantidade_de_pessoas
      t.float :valor
      t.string :transporte

      t.timestamps
    end
  end

  def self.down
    drop_table :pacotes
  end
end
