class Promotion < ActiveRecord::Base
  attr_accessible        :testdate, :student_id, :rank_id
  validates_presence_of  :student_id, :rank_id
  belongs_to :student
end
