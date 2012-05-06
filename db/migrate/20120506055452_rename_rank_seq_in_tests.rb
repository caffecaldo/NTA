class RenameRankSeqInTests < ActiveRecord::Migration
  def self.up
    rename_column(:tests, :rank_seq, :rank_id)
  end

  def self.down
    rename_column(:tests, :rank_id, :rank_seq)
  end
end
