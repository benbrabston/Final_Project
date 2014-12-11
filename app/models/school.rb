class School < ActiveRecord::Base
  has_many :dorms
  has_many :students
  has_many :questions

  validates :name, :presence => true, :uniqueness => true, :case_sensitive => false
  validates :email_end, :presence => true, :uniqueness => true, :case_sensitive => false
end
