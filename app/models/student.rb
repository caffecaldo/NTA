class Student < ActiveRecord::Base
  attr_accessible :firstname, :middlename, :lastname, :address1, :address2, :address3, :city, :state, :zip, :email, :birthdate, :additional_notes, :sticky_listing, :do_not_disturb, :rank_id
  belongs_to :rank
  has_many :notes
  has_many :year_end_reviews
  has_many :ranktests
  validates_presence_of     :days_carry_forward
  validates_numericality_of :days_carry_forward
  def fullname
    "#{firstname} #{lastname}"
  end
end
