class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.date :birthdate
      t.text :additional_notes
      t.boolean :sticky_listing
      t.boolean :do_not_disturb
      t.integer :rank_id

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
