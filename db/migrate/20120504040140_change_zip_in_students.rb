class ChangeZipInStudents < ActiveRecord::Migration
  def self.up
    change_column(:students, :zip, :text)
  end

  def self.down
    change_column(:students, :zip, :integer)
  end
end
