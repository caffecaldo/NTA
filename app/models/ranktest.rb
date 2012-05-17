class Ranktest < ActiveRecord::Base
  attr_accessible        :date, :student_id, :rank_id
  validates_presence_of  :student_id, :rank_id
  belongs_to :student
end
