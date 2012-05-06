class RenameRankOrderInTests < ActiveRecord::Migration
  def self.up
    rename_column(:tests, :rank_order, :rank_seq)
  end

  def self.down
    rename_column(:tests, :rank_seq, :rank_order)
  end
end
