class CreateLibraries < ActiveRecord::Migration
  def self.up
    create_table :libraries do |t|
      t.string :item
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :libraries
  end
end
