class Rank < ActiveRecord::Base
  validates_presence_of     :order, :name, :class_hours_required, :cal_months_required
  validates_uniqueness_of   :order, :name
  validates_numericality_of :order, :class_hours_required, :cal_months_required
  has_many :students
end
