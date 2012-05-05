class ChangeRankIdInTests < ActiveRecord::Migration
  def self.up
    change_column_default(:tests, :rank_id, 0)
  end

  def self.down
    change_column_default(:tests, :rank_id, nil)
  end
end
