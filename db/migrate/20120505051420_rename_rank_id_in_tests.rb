class RenameRankIdInTests < ActiveRecord::Migration
  def self.up
    rename_column(:tests, :rank_id, :rank_order)
  end

  def self.down
    rename_column(:tests, :rank_order, :rank_id)
  end
end
