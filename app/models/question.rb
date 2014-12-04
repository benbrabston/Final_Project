class Question < ActiveRecord::Base
  belongs_to :school

  validates_uniqueness_of :question_text, :scope => [:school_id]
end
