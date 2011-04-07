class CreateRanks < ActiveRecord::Migration
  def self.up
    create_table :ranks do |t|
      t.integer :order
      t.string :name
      t.integer :days_required

      t.timestamps
    end
  end

  def self.down
    drop_table :ranks
  end
end
