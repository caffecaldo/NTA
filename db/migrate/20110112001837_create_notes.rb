class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.text :note
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
