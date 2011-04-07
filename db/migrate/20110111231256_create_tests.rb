class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :tests do |t|
      t.date :date
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tests
  end
end
