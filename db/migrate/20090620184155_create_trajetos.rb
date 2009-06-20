class CreateTrajetos < ActiveRecord::Migration
  def self.up
    create_table :trajetos do |t|
      t.integer :pacote_id
      t.integer :cidade_id
      t.timestamps
    end
  end  

  def self.down
    drop_table :trajetos
  end
end
