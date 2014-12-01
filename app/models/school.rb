class School < ActiveRecord::Base
  has_many :dorms
  has_many :responses

  validates :name, :presence => true, :uniqueness => true
end
