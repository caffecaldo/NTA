class Student < ActiveRecord::Base
  belongs_to :rank
  has_many :notes
  has_many :year_end_reviews
end
