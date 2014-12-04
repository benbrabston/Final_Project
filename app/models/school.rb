class School < ActiveRecord::Base
  has_many :dorms
  has_many :students
  has_many :questions

  validates :name, :presence => true, :uniqueness => true
  validates :email_end, :presence => true, :uniqueness => true
end
