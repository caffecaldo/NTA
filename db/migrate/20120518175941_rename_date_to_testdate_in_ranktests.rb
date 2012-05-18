class RenameDateToTestdateInRanktests < ActiveRecord::Migration
  def up
  	rename_column(:ranktests, :date, :testdate)
  end

  def down
  	rename_column(:ranktests, :testdate, :date)
  end
end
