class Attendance < ActiveRecord::Base
  attr_accessible           :class_date, :student_id, :class_hours
  validates_presence_of     :class_date, :student_id, :class_hours
  validates_numericality_of :student_id, :class_hours
end
