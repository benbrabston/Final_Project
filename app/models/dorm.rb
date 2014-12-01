class Dorm < ActiveRecord::Base
  has_many :students

  belongs_to :school

  validates :name, :presence => true
  validates_associated :schools
end
