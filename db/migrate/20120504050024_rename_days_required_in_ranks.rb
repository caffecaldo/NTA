class RenameDaysRequiredInRanks < ActiveRecord::Migration
  def self.up
    rename_column(:ranks, :days_required, :class_hours_required)
  end

  def self.down
        rename_column(:ranks, :class_hours_required, :days_required)
  end
end
