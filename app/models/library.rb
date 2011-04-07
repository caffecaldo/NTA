class Library < ActiveRecord::Base
  validates_presence_of     :item, :student_id
  validates_numericality_of :student_id
end
