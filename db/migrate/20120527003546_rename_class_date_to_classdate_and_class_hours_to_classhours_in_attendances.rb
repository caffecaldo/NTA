class RenameClassDateToClassdateAndClassHoursToClasshoursInAttendances < ActiveRecord::Migration
  def up
  	rename_column(:attendances, :class_date, :classdate)
  	rename_column(:attendances, :class_hours, :classhours)
  end

  def down
   	rename_column(:attendances, :classdate, :class_date)
  	rename_column(:attendances, :classhours, :class_hours)
  end
end
