class RenameOrderColInRanks < ActiveRecord::Migration
  def self.up
    rename_column(:ranks, :order, :seq)
  end

  def self.down
    rename_column(:ranks, :seq, :order)
  end
end
