class Library < ActiveRecord::Base
  attr_accessible           :item, :student_id
  validates_presence_of     :item, :student_id
  validates_numericality_of :student_id
end
