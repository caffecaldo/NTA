class Attendance < ActiveRecord::Base
  attr_accessible           :date, :student_id, :class_hours
  validates_presence_of     :date, :student_id
  validates_numericality_of :student_id
end
