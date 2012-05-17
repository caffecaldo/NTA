class Note < ActiveRecord::Base
  attr_accessible :note, :student_id
  belongs_to :student
end
