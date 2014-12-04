class Response < ActiveRecord::Base
  has_many :students

  validates :student_id, :presence => true

  validates_uniqueness_of :student_id, :scope => [:question_id]

end
