class AddClassHoursToAttendances < ActiveRecord::Migration
  def self.up
    add_column :attendances, :class_hours, :integer, { :default => 0 }
  end

  def self.down
    remove_column :attendances, :class_hours
  end
end
