class ChangeClassHoursRequiredInRanks < ActiveRecord::Migration
  def self.up
    change_column_default(:ranks, :class_hours_required, 0)
  end

  def self.down
    change_column_default(:ranks, :class_hours_required, nil)
  end
end
