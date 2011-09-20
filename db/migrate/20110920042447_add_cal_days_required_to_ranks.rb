class AddCalDaysRequiredToRanks < ActiveRecord::Migration
  def self.up
    add_column :ranks, :cal_days_required, :integer
  end

  def self.down
    remove_column :ranks, :cal_days_required
  end
end
