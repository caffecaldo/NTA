class Attendance < ActiveRecord::Base
  validates_presence_of     :date, :student_id
  validates_numericality_of :student_id
end
