class ChangeDaysCarryForwardInStudents < ActiveRecord::Migration
  def self.up
    change_column_default(:students, :days_carry_forward, 0)
  end

  def self.down
    change_column_default(:students, :days_carry_forward, nil)
  end
end
