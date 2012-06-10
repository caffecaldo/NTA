class RemoveRankIdFromAndAddJoinDateToStudents < ActiveRecord::Migration
  def up
  	remove_column :students, :rank_id
  	add_column :students, :join_date, :date, :default => '1970-01-01'
  end

  def down
  	add_column :students, :rank_id, :integer
  	remove_column :students, :join_date
  end
end
