class Rank < ActiveRecord::Base
  validates_presence_of     :order, :name, :days_required
  validates_uniqueness_of   :order, :name
  validates_numericality_of :order, :days_required
  has_many :students
end
