class Student < ActiveRecord::Base
  belongs_to :rank
  has_many :notes
  has_many :year_end_reviews
  validates_presence_of     :days_carry_forward
  validates_numericality_of :days_carry_forward
end
