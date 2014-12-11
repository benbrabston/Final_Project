class Response < ActiveRecord::Base
  belongs_to :student

  validates :student_id, :presence => true

  validates_uniqueness_of :student_id, :scope => [:question_id]

end
