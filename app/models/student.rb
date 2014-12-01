class Student < ActiveRecord::Base
  has_many :responses

  belongs_to :dorm
  belongs_to :school, :foreign_key => "email_end"

  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates_associated :schools
end
