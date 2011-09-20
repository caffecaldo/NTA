class AddDaysCarryForwardToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :days_carry_forward, :integer
  end

  def self.down
    remove_column :students, :days_carry_forward
  end
end
