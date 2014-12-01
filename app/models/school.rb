class School < ActiveRecord::Base
  has_many :dorms
  has_many :students

  validates :name, :presence => true, :uniqueness => true
end
