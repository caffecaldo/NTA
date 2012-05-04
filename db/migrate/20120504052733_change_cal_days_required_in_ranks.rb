class ChangeCalDaysRequiredInRanks < ActiveRecord::Migration
  def self.up
    change_column_default(:ranks, :cal_days_required, 0)
  end

  def self.down
    change_column_default(:ranks, :cal_days_required, nil)
  end
end
