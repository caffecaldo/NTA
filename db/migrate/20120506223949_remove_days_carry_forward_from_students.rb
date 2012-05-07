class RemoveDaysCarryForwardFromStudents < ActiveRecord::Migration
  def self.up
    remove_column :students, :days_carry_forward
  end

  def self.down
    add_column :students, :days_carry_forward, :integer
  end
end
