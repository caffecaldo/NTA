class RenameTableTestsToRanktests < ActiveRecord::Migration
  def self.up
    rename_table(:tests, :ranktests)
  end

  def self.down
    rename_table(:ranktests, :tests)
  end
end
