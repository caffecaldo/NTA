class Student < ActiveRecord::Base
  attr_accessible :firstname, :middlename, :lastname, :address1, :address2, :address3, :city, :state, :zip, :email, :birthdate, :additional_notes, :sticky_listing, :do_not_disturb, :join_date
  belongs_to :rank
  has_many :notes, :dependent => :destroy
  has_many :year_end_reviews, :dependent => :destroy
  has_many :promotions, :dependent => :destroy
  accepts_nested_attributes_for :promotions
  def fullname
    "#{firstname} #{lastname}"
  end
  def revfullname
    "#{lastname}, #{firstname}"
  end
end
