class Dorm < ActiveRecord::Base
  has_many :students

  belongs_to :school

  validates :name, :presence => true
  validates :size, :presence => true
  validates_uniqueness_of :name, :scope => [:school_id], :case_sensitive => false
end
