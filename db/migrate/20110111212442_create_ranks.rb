class ChangeDaysCarryForward < ActiveRecord::Migration
  def self.up
    change_column_default(:students, :days_carry_forward, :default => 0)
  end

  def self.down
    change_column_default(:students, :days_carry_forward, :default => nil)
  end
end