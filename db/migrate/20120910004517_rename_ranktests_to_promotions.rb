class RenameRanktestsToPromotions < ActiveRecord::Migration
  def up
  	rename_table(:ranktests, :promotions)
  end

  def down
  	rename_table(:promotions, :ranktests)
  end
end
