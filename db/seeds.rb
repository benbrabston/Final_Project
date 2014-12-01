# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


student_info = [
  {
    :first_name => "Super",
    :last_name => "Mario",
    :email => "a@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Luigi",
    :last_name => "Mario",
    :email => "b@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Princess",
    :last_name => "Leah",
    :email => "c@example.com",
    :gender => "Female"
  },
  {
    :first_name => "Mia",
    :last_name => "Hamm",
    :email => "d@example.com",
    :gender => "Female"
  },
  {
    :first_name => "Oprah",
    :last_name => "Winfrey",
    :email => "e@example.com",
    :gender => "Female"
  },
  {
    :first_name => "Darth",
    :last_name => "Vader",
    :email => "f@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Obi",
    :last_name => "Wan",
    :email => "g@example.com",
    :gender => "Male"
  }
]

student_info.each do |student_hash|
  p = Student.new
  p.first_name = student_hash[:first_name]
  p.last_name = student_hash[:last_name]
  p.email = student_hash[:email]
  p.gender = student_hash[:gender]

  p.save
end
