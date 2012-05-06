class RenameTestTable < ActiveRecord::Migration
  def self.up
    rename_table(:tests, :rank_tests)
  end

  def self.down
    rename_table(:rank_tests, :tests)
  end
end
