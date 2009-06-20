class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.string :nome
      t.references :cidade

      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
