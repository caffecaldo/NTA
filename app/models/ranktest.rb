class Ranktest < ActiveRecord::Base
  validates_presence_of  :student_id, :rank_id
  belongs_to :student
end
