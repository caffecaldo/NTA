class Attendance < ActiveRecord::Base
  attr_accessible           :class_date, :student_id, :class_hours
  validates_presence_of     :class_date, :student_id, :class_hours
  validates_numericality_of :class_hours, :greater_than => 0
  validates_uniqueness_of	:student_id, :scope => :class_date
end
