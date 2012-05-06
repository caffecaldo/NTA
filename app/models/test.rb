class Test < ActiveRecord::Base
  validates_presence_of  :student_id, :rank_id
end
