class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :responses

  belongs_to :dorm
  belongs_to :school

  validates :email, :presence => true, :uniqueness => true, :case_sensitive => false
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :school_id, :presence => true

  before_validation :connect_to_school

  def connect_to_school
    school_end = self.email.split("@").last

    the_school = School.find_by({ :email_end => school_end })

    if the_school.present?
      self.school_id = the_school.id
      self.email_end = school_end
    end
  end


end
