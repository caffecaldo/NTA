class RenameDateToClassDateInAttendances < ActiveRecord::Migration
  def up
  	rename_column(:attendances, :date, :class_date)
  end

  def down
  	rename_column(:attendances, :class_date, :date)
  end
end
