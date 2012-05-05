class AddRankIdToTests < ActiveRecord::Migration
  def self.up
    add_column :tests, :rank_id, :integer
  end

  def self.down
    remove_column :tests, :rank_id
  end
end
