class RenameCalDaysRequiredInRanks < ActiveRecord::Migration
  def self.up
    rename_column(:ranks, :cal_days_required, :cal_months_required)
  end

  def self.down
    rename_column(:ranks, :cal_months_required, :cal_days_required)
  end
end
