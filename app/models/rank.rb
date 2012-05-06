class Rank < ActiveRecord::Base
  validates_presence_of     :seq, :name, :class_hours_required, :cal_months_required
  validates_uniqueness_of   :seq, :name
  validates_numericality_of :seq, :class_hours_required, :cal_months_required
  has_many :students
end
