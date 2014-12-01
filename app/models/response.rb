class Response < ActiveRecord::Base
  has_many :students

  validates_associated :students
end
