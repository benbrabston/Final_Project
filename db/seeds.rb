# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

schools = [
  {
    :name => "Example University",
    :email_end => "example.com",
    :theme => "//maxcdn.bootstrapcdn.com/bootswatch/3.3.0/superhero/bootstrap.min.css"
  },
  {
    :name => "Northwestern University",
    :email_end => "u.northwestern.edu",
    :theme => "//maxcdn.bootstrapcdn.com/bootswatch/3.3.0/darkly/bootstrap.min.css"
  },
  {
    :name => "Chicago Booth",
    :email_end => "chicagobooth.edu",
    :theme => "//maxcdn.bootstrapcdn.com/bootswatch/3.3.0/flatly/bootstrap.min.css"
  }
]


schools.each do |school_new|
  school = School.new
  school.name = school_new[:name]
  school.email_end = school_new[:email_end]
  school.theme = school_new[:theme]
  school.save
end

puts "There are now #{School.count} schools in the database."

dorms = [
  {
    :name => "Party Dorm",
    :school_id => 1,
    :size => 10
  },
  {
    :name => "Study Dorm",
    :school_id => 1,
    :size => 20
  }
]


dorms.each do |dorm_new|
  dorm = Dorm.new
  dorm.name = dorm_new[:name]
  dorm.school_id = dorm_new[:school_id]
  dorm.size = dorm_new[:size]
  dorm.save
end

puts "There are now #{Dorm.count} dorms in the database."

student_emails = [
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
    :first_name => "Ben",
    :last_name => "Kenobi",
    :email => "g@chicagobooth.edu",
    :gender => "Male"
  },
  {
    :first_name => "Luke",
    :last_name => "Skywalker",
    :email => "h@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Han",
    :last_name => "Solo",
    :email => "i@example.com",
    :gender => "Male"
  },
  {
    :first_name => "R2",
    :last_name => "D2",
    :email => "j@example.com",
    :gender => "Male"
  },
  {
    :first_name => "C3",
    :last_name => "PO",
    :email => "k@example.com",
    :gender => "Male"
  },
  {
    :first_name => "George",
    :last_name => "Washington",
    :email => "l@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Abraham",
    :last_name => "Lincoln",
    :email => "m@example.com",
    :gender => "Male"
  },
  {
    :first_name => "George",
    :last_name => "Bush",
    :email => "n@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Michael",
    :last_name => "Jordan",
    :email => "o@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Kobe",
    :last_name => "Bryant",
    :email => "p@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Derreck",
    :last_name => "Rose",
    :email => "q@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Pau",
    :last_name => "Gasol",
    :email => "r@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Peyton",
    :last_name => "Manning",
    :email => "s@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Eli",
    :last_name => "Manning",
    :email => "t@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Archie",
    :last_name => "Manning",
    :email => "u@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Harrison",
    :last_name => "Ford",
    :email => "v@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Roger",
    :last_name => "Goodell",
    :email => "w@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Adam",
    :last_name => "Silver",
    :email => "x@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Gary",
    :last_name => "Bettman",
    :email => "y@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Franklin",
    :last_name => "Roosevelt",
    :email => "z@example.com",
    :gender => "Male"
  },
  {
    :first_name => "Universal",
    :last_name => "Admin",
    :email => "universal.admin@example.com",
    :gender => "Male",
    :admin => true
  },
  {
    :first_name => "Example U",
    :last_name => "Admin",
    :email => "example.u.admin@example.com",
    :gender => "Male",
    :school_admin => true
  }
]


student_emails.each do |student_new|
  student = Student.new
  student.email = student_new[:email]
  student.password = "12345678"
  student.password_confirmation = "12345678"
  student.first_name = student_new[:first_name]
  student.last_name = student_new[:last_name]
  student.gender = student_new[:gender]
  student.admin = student_new[:admin]
  student.school_admin = student_new[:school_admin]
  student.save
end

puts "There are now #{Student.count} students in the database."

questions = [
{
  :question_text => "On a scale of 1-10, how much do you like to party?",
  :school_id => 1,
  :school_question_id => 1
},
{
  :question_text => "On a scale of 1-10, how cleanly are you?",
  :school_id => 1,
  :school_question_id => 2
},
{
  :question_text => "On a scale of 1-10, how much do you enjoy sports?",
  :school_id => 1,
  :school_question_id => 3
},
{
  :question_text => "On a scale of 1-10, how much do you enjoy arts?",
  :school_id => 1,
  :school_question_id => 4
},
{
  :question_text => "On a scale of 1-10, how open are you to new experiences?",
  :school_id => 1,
  :school_question_id => 5
},
{
  :question_text => "On a scale of 1-10, how blunt are you?",
  :school_id => 1,
  :school_question_id => 6
},
{
  :question_text => "On a scale of 1-10, how much organization do you require?",
  :school_id => 1,
  :school_question_id => 7
},
{
  :question_text => "On a scale of 1-10, how much do you keep up with today's events?",
  :school_id => 1,
  :school_question_id => 8
},
{
  :question_text => "On a scale of 1-10, how much of a morning person are you?",
  :school_id => 1,
  :school_question_id => 9
},
{
  :question_text => "On a scale of 1-10, how technologically savvy are you?",
  :school_id => 1,
  :school_question_id => 10
},
{
  :question_text => "On a scale of 1-10, how much do you like to party?",
  :school_id => 2,
  :school_question_id => 1
},
{
  :question_text => "On a scale of 1-10, how cleanly are you?",
  :school_id => 2,
  :school_question_id => 2
},
{
  :question_text => "On a scale of 1-10, how much do you enjoy sports?",
  :school_id => 2,
  :school_question_id => 3
},
{
  :question_text => "On a scale of 1-10, how much do you enjoy arts?",
  :school_id => 2,
  :school_question_id => 4
},
{
  :question_text => "On a scale of 1-10, how open are you to new experiences?",
  :school_id => 2,
  :school_question_id => 5
},
{
  :question_text => "On a scale of 1-10, how blunt are you?",
  :school_id => 2,
  :school_question_id => 6
},
{
  :question_text => "On a scale of 1-10, how much organization do you require?",
  :school_id => 2,
  :school_question_id => 7
},
{
  :question_text => "On a scale of 1-10, how much do you keep up with today's events?",
  :school_id => 2,
  :school_question_id => 8
},
{
  :question_text => "On a scale of 1-10, how much of a morning person are you?",
  :school_id => 2,
  :school_question_id => 9
},
{
  :question_text => "On a scale of 1-10, how quickly do you learn?",
  :school_id => 2,
  :school_question_id => 10
},
{
  :question_text => "On a scale of 1-10, how much do you like to party?",
  :school_id => 3,
  :school_question_id => 1
},
{
  :question_text => "On a scale of 1-10, how cleanly are you?",
  :school_id => 3,
  :school_question_id => 2
},
{
  :question_text => "On a scale of 1-10, how much do you enjoy sports?",
  :school_id => 3,
  :school_question_id => 3
},
{
  :question_text => "On a scale of 1-10, how much do you enjoy arts?",
  :school_id => 3,
  :school_question_id => 4
},
{
  :question_text => "On a scale of 1-10, how open are you to new experiences?",
  :school_id => 3,
  :school_question_id => 5
},
{
  :question_text => "On a scale of 1-10, how blunt are you?",
  :school_id => 3,
  :school_question_id => 6
},
{
  :question_text => "On a scale of 1-10, how much organization do you require?",
  :school_id => 3,
  :school_question_id => 7
},
{
  :question_text => "On a scale of 1-10, how much do you keep up with today's events?",
  :school_id => 3,
  :school_question_id => 8
},
{
  :question_text => "On a scale of 1-10, how much of a morning person are you?",
  :school_id => 3,
  :school_question_id => 9
},
{
  :question_text => "On a scale of 1-10, how quickly do you learn?",
  :school_id => 3,
  :school_question_id => 10
}
]

questions.each do |question_new|
  q = Question.new
  q.question_text = question_new[:question_text]
  q.school_id = question_new[:school_id]
  q.school_question_id = question_new[:school_question_id]
  q.save
end

puts "There are now #{Question.count} questions in the database."


responses = [
{
  :student_id => 1,
  :question_id => 1,
  :qanswer => 7
},
{
  :student_id => 1,
  :question_id => 2,
  :qanswer => 4
},
{
  :student_id => 1,
  :question_id => 3,
  :qanswer => 4
},
{
  :student_id => 1,
  :question_id => 4,
  :qanswer => 5
},
{
  :student_id => 1,
  :question_id => 5,
  :qanswer => 2
},
{
  :student_id => 1,
  :question_id => 6,
  :qanswer => 8
},
{
  :student_id => 1,
  :question_id => 7,
  :qanswer => 5
},
{
  :student_id => 1,
  :question_id => 8,
  :qanswer => 5
},
{
  :student_id => 1,
  :question_id => 9,
  :qanswer => 5
},
{
  :student_id => 1,
  :question_id => 10,
  :qanswer => 7
},
{
  :student_id => 2,
  :question_id => 1,
  :qanswer => 9
},
{
  :student_id => 2,
  :question_id => 2,
  :qanswer => 4
},
{
  :student_id => 2,
  :question_id => 3,
  :qanswer => 5
},
{
  :student_id => 2,
  :question_id => 4,
  :qanswer => 2
},
{
  :student_id => 2,
  :question_id => 5,
  :qanswer => 6
},
{
  :student_id => 2,
  :question_id => 6,
  :qanswer => 4
},
{
  :student_id => 2,
  :question_id => 7,
  :qanswer => 4
},
{
  :student_id => 2,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 2,
  :question_id => 9,
  :qanswer => 1
},
{
  :student_id => 2,
  :question_id => 10,
  :qanswer => 8
},
{
  :student_id => 3,
  :question_id => 1,
  :qanswer => 9
},
{
  :student_id => 3,
  :question_id => 2,
  :qanswer => 3
},
{
  :student_id => 3,
  :question_id => 3,
  :qanswer => 10
},
{
  :student_id => 3,
  :question_id => 4,
  :qanswer => 7
},
{
  :student_id => 3,
  :question_id => 5,
  :qanswer => 7
},
{
  :student_id => 3,
  :question_id => 6,
  :qanswer => 4
},
{
  :student_id => 3,
  :question_id => 7,
  :qanswer => 9
},
{
  :student_id => 3,
  :question_id => 8,
  :qanswer => 9
},
{
  :student_id => 3,
  :question_id => 9,
  :qanswer => 9
},
{
  :student_id => 3,
  :question_id => 10,
  :qanswer => 2
},
{
  :student_id => 4,
  :question_id => 1,
  :qanswer => 6
},
{
  :student_id => 4,
  :question_id => 2,
  :qanswer => 6
},
{
  :student_id => 4,
  :question_id => 3,
  :qanswer => 9
},
{
  :student_id => 4,
  :question_id => 4,
  :qanswer => 3
},
{
  :student_id => 4,
  :question_id => 5,
  :qanswer => 4
},
{
  :student_id => 4,
  :question_id => 6,
  :qanswer => 7
},
{
  :student_id => 4,
  :question_id => 7,
  :qanswer => 4
},
{
  :student_id => 4,
  :question_id => 8,
  :qanswer => 4
},
{
  :student_id => 4,
  :question_id => 9,
  :qanswer => 6
},
{
  :student_id => 4,
  :question_id => 10,
  :qanswer => 1
},
{
  :student_id => 5,
  :question_id => 1,
  :qanswer => 5
},
{
  :student_id => 5,
  :question_id => 2,
  :qanswer => 6
},
{
  :student_id => 5,
  :question_id => 3,
  :qanswer => 3
},
{
  :student_id => 5,
  :question_id => 4,
  :qanswer => 2
},
{
  :student_id => 5,
  :question_id => 5,
  :qanswer => 9
},
{
  :student_id => 5,
  :question_id => 6,
  :qanswer => 4
},
{
  :student_id => 5,
  :question_id => 7,
  :qanswer => 1
},
{
  :student_id => 5,
  :question_id => 8,
  :qanswer => 4
},
{
  :student_id => 5,
  :question_id => 9,
  :qanswer => 2
},
{
  :student_id => 5,
  :question_id => 10,
  :qanswer => 5
},
{
  :student_id => 6,
  :question_id => 1,
  :qanswer => 10
},
{
  :student_id => 6,
  :question_id => 2,
  :qanswer => 9
},
{
  :student_id => 6,
  :question_id => 3,
  :qanswer => 3
},
{
  :student_id => 6,
  :question_id => 4,
  :qanswer => 2
},
{
  :student_id => 6,
  :question_id => 5,
  :qanswer => 2
},
{
  :student_id => 6,
  :question_id => 6,
  :qanswer => 10
},
{
  :student_id => 6,
  :question_id => 7,
  :qanswer => 1
},
{
  :student_id => 6,
  :question_id => 8,
  :qanswer => 3
},
{
  :student_id => 6,
  :question_id => 9,
  :qanswer => 6
},
{
  :student_id => 6,
  :question_id => 10,
  :qanswer => 9
},
{
  :student_id => 7,
  :question_id => 1,
  :qanswer => 6
},
{
  :student_id => 7,
  :question_id => 2,
  :qanswer => 1
},
{
  :student_id => 7,
  :question_id => 3,
  :qanswer => 2
},
{
  :student_id => 7,
  :question_id => 4,
  :qanswer => 7
},
{
  :student_id => 7,
  :question_id => 5,
  :qanswer => 2
},
{
  :student_id => 7,
  :question_id => 6,
  :qanswer => 5
},
{
  :student_id => 7,
  :question_id => 7,
  :qanswer => 8
},
{
  :student_id => 7,
  :question_id => 8,
  :qanswer => 10
},
{
  :student_id => 7,
  :question_id => 9,
  :qanswer => 5
},
{
  :student_id => 7,
  :question_id => 10,
  :qanswer => 10
},
{
  :student_id => 8,
  :question_id => 1,
  :qanswer => 7
},
{
  :student_id => 8,
  :question_id => 2,
  :qanswer => 1
},
{
  :student_id => 8,
  :question_id => 3,
  :qanswer => 7
},
{
  :student_id => 8,
  :question_id => 4,
  :qanswer => 6
},
{
  :student_id => 8,
  :question_id => 5,
  :qanswer => 5
},
{
  :student_id => 8,
  :question_id => 6,
  :qanswer => 6
},
{
  :student_id => 8,
  :question_id => 7,
  :qanswer => 7
},
{
  :student_id => 8,
  :question_id => 8,
  :qanswer => 1
},
{
  :student_id => 8,
  :question_id => 9,
  :qanswer => 3
},
{
  :student_id => 8,
  :question_id => 10,
  :qanswer => 5
},
{
  :student_id => 9,
  :question_id => 1,
  :qanswer => 6
},
{
  :student_id => 9,
  :question_id => 2,
  :qanswer => 8
},
{
  :student_id => 9,
  :question_id => 3,
  :qanswer => 3
},
{
  :student_id => 9,
  :question_id => 4,
  :qanswer => 7
},
{
  :student_id => 9,
  :question_id => 5,
  :qanswer => 5
},
{
  :student_id => 9,
  :question_id => 6,
  :qanswer => 7
},
{
  :student_id => 9,
  :question_id => 7,
  :qanswer => 5
},
{
  :student_id => 9,
  :question_id => 8,
  :qanswer => 6
},
{
  :student_id => 9,
  :question_id => 9,
  :qanswer => 8
},
{
  :student_id => 9,
  :question_id => 10,
  :qanswer => 9
},
{
  :student_id => 10,
  :question_id => 1,
  :qanswer => 8
},
{
  :student_id => 10,
  :question_id => 2,
  :qanswer => 4
},
{
  :student_id => 10,
  :question_id => 3,
  :qanswer => 5
},
{
  :student_id => 10,
  :question_id => 4,
  :qanswer => 4
},
{
  :student_id => 10,
  :question_id => 5,
  :qanswer => 7
},
{
  :student_id => 10,
  :question_id => 6,
  :qanswer => 10
},
{
  :student_id => 10,
  :question_id => 7,
  :qanswer => 4
},
{
  :student_id => 10,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 10,
  :question_id => 9,
  :qanswer => 3
},
{
  :student_id => 10,
  :question_id => 10,
  :qanswer => 3
},
{
  :student_id => 11,
  :question_id => 1,
  :qanswer => 3
},
{
  :student_id => 11,
  :question_id => 2,
  :qanswer => 8
},
{
  :student_id => 11,
  :question_id => 3,
  :qanswer => 7
},
{
  :student_id => 11,
  :question_id => 4,
  :qanswer => 8
},
{
  :student_id => 11,
  :question_id => 5,
  :qanswer => 8
},
{
  :student_id => 11,
  :question_id => 6,
  :qanswer => 9
},
{
  :student_id => 11,
  :question_id => 7,
  :qanswer => 8
},
{
  :student_id => 11,
  :question_id => 8,
  :qanswer => 1
},
{
  :student_id => 11,
  :question_id => 9,
  :qanswer => 3
},
{
  :student_id => 11,
  :question_id => 10,
  :qanswer => 4
},
{
  :student_id => 12,
  :question_id => 1,
  :qanswer => 7
},
{
  :student_id => 12,
  :question_id => 2,
  :qanswer => 7
},
{
  :student_id => 12,
  :question_id => 3,
  :qanswer => 4
},
{
  :student_id => 12,
  :question_id => 4,
  :qanswer => 1
},
{
  :student_id => 12,
  :question_id => 5,
  :qanswer => 2
},
{
  :student_id => 12,
  :question_id => 6,
  :qanswer => 7
},
{
  :student_id => 12,
  :question_id => 7,
  :qanswer => 4
},
{
  :student_id => 12,
  :question_id => 8,
  :qanswer => 6
},
{
  :student_id => 12,
  :question_id => 9,
  :qanswer => 6
},
{
  :student_id => 12,
  :question_id => 10,
  :qanswer => 2
},
{
  :student_id => 13,
  :question_id => 1,
  :qanswer => 7
},
{
  :student_id => 13,
  :question_id => 2,
  :qanswer => 6
},
{
  :student_id => 13,
  :question_id => 3,
  :qanswer => 3
},
{
  :student_id => 13,
  :question_id => 4,
  :qanswer => 8
},
{
  :student_id => 13,
  :question_id => 5,
  :qanswer => 7
},
{
  :student_id => 13,
  :question_id => 6,
  :qanswer => 2
},
{
  :student_id => 13,
  :question_id => 7,
  :qanswer => 1
},
{
  :student_id => 13,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 13,
  :question_id => 9,
  :qanswer => 6
},
{
  :student_id => 13,
  :question_id => 10,
  :qanswer => 6
},
{
  :student_id => 14,
  :question_id => 1,
  :qanswer => 5
},
{
  :student_id => 14,
  :question_id => 2,
  :qanswer => 9
},
{
  :student_id => 14,
  :question_id => 3,
  :qanswer => 10
},
{
  :student_id => 14,
  :question_id => 4,
  :qanswer => 2
},
{
  :student_id => 14,
  :question_id => 5,
  :qanswer => 6
},
{
  :student_id => 14,
  :question_id => 6,
  :qanswer => 4
},
{
  :student_id => 14,
  :question_id => 7,
  :qanswer => 7
},
{
  :student_id => 14,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 14,
  :question_id => 9,
  :qanswer => 7
},
{
  :student_id => 14,
  :question_id => 10,
  :qanswer => 5
},
{
  :student_id => 15,
  :question_id => 1,
  :qanswer => 5
},
{
  :student_id => 15,
  :question_id => 2,
  :qanswer => 9
},
{
  :student_id => 15,
  :question_id => 3,
  :qanswer => 2
},
{
  :student_id => 15,
  :question_id => 4,
  :qanswer => 9
},
{
  :student_id => 15,
  :question_id => 5,
  :qanswer => 2
},
{
  :student_id => 15,
  :question_id => 6,
  :qanswer => 3
},
{
  :student_id => 15,
  :question_id => 7,
  :qanswer => 8
},
{
  :student_id => 15,
  :question_id => 8,
  :qanswer => 8
},
{
  :student_id => 15,
  :question_id => 9,
  :qanswer => 8
},
{
  :student_id => 15,
  :question_id => 10,
  :qanswer => 9
},
{
  :student_id => 16,
  :question_id => 1,
  :qanswer => 9
},
{
  :student_id => 16,
  :question_id => 2,
  :qanswer => 4
},
{
  :student_id => 16,
  :question_id => 3,
  :qanswer => 7
},
{
  :student_id => 16,
  :question_id => 4,
  :qanswer => 6
},
{
  :student_id => 16,
  :question_id => 5,
  :qanswer => 6
},
{
  :student_id => 16,
  :question_id => 6,
  :qanswer => 2
},
{
  :student_id => 16,
  :question_id => 7,
  :qanswer => 7
},
{
  :student_id => 16,
  :question_id => 8,
  :qanswer => 3
},
{
  :student_id => 16,
  :question_id => 9,
  :qanswer => 3
},
{
  :student_id => 16,
  :question_id => 10,
  :qanswer => 8
},
{
  :student_id => 17,
  :question_id => 1,
  :qanswer => 6
},
{
  :student_id => 17,
  :question_id => 2,
  :qanswer => 6
},
{
  :student_id => 17,
  :question_id => 3,
  :qanswer => 3
},
{
  :student_id => 17,
  :question_id => 4,
  :qanswer => 9
},
{
  :student_id => 17,
  :question_id => 5,
  :qanswer => 3
},
{
  :student_id => 17,
  :question_id => 6,
  :qanswer => 9
},
{
  :student_id => 17,
  :question_id => 7,
  :qanswer => 7
},
{
  :student_id => 17,
  :question_id => 8,
  :qanswer => 8
},
{
  :student_id => 17,
  :question_id => 9,
  :qanswer => 5
},
{
  :student_id => 17,
  :question_id => 10,
  :qanswer => 2
},
{
  :student_id => 18,
  :question_id => 1,
  :qanswer => 8
},
{
  :student_id => 18,
  :question_id => 2,
  :qanswer => 8
},
{
  :student_id => 18,
  :question_id => 3,
  :qanswer => 2
},
{
  :student_id => 18,
  :question_id => 4,
  :qanswer => 4
},
{
  :student_id => 18,
  :question_id => 5,
  :qanswer => 6
},
{
  :student_id => 18,
  :question_id => 6,
  :qanswer => 9
},
{
  :student_id => 18,
  :question_id => 7,
  :qanswer => 7
},
{
  :student_id => 18,
  :question_id => 8,
  :qanswer => 8
},
{
  :student_id => 18,
  :question_id => 9,
  :qanswer => 8
},
{
  :student_id => 18,
  :question_id => 10,
  :qanswer => 5
},
{
  :student_id => 19,
  :question_id => 1,
  :qanswer => 4
},
{
  :student_id => 19,
  :question_id => 2,
  :qanswer => 4
},
{
  :student_id => 19,
  :question_id => 3,
  :qanswer => 7
},
{
  :student_id => 19,
  :question_id => 4,
  :qanswer => 3
},
{
  :student_id => 19,
  :question_id => 5,
  :qanswer => 3
},
{
  :student_id => 19,
  :question_id => 6,
  :qanswer => 6
},
{
  :student_id => 19,
  :question_id => 7,
  :qanswer => 5
},
{
  :student_id => 19,
  :question_id => 8,
  :qanswer => 2
},
{
  :student_id => 19,
  :question_id => 9,
  :qanswer => 3
},
{
  :student_id => 19,
  :question_id => 10,
  :qanswer => 8
},
{
  :student_id => 20,
  :question_id => 1,
  :qanswer => 4
},
{
  :student_id => 20,
  :question_id => 2,
  :qanswer => 10
},
{
  :student_id => 20,
  :question_id => 3,
  :qanswer => 9
},
{
  :student_id => 20,
  :question_id => 4,
  :qanswer => 3
},
{
  :student_id => 20,
  :question_id => 5,
  :qanswer => 5
},
{
  :student_id => 20,
  :question_id => 6,
  :qanswer => 9
},
{
  :student_id => 20,
  :question_id => 7,
  :qanswer => 10
},
{
  :student_id => 20,
  :question_id => 8,
  :qanswer => 9
},
{
  :student_id => 20,
  :question_id => 9,
  :qanswer => 3
},
{
  :student_id => 20,
  :question_id => 10,
  :qanswer => 1
},
{
  :student_id => 21,
  :question_id => 1,
  :qanswer => 6
},
{
  :student_id => 21,
  :question_id => 2,
  :qanswer => 7
},
{
  :student_id => 21,
  :question_id => 3,
  :qanswer => 9
},
{
  :student_id => 21,
  :question_id => 4,
  :qanswer => 4
},
{
  :student_id => 21,
  :question_id => 5,
  :qanswer => 2
},
{
  :student_id => 21,
  :question_id => 6,
  :qanswer => 7
},
{
  :student_id => 21,
  :question_id => 7,
  :qanswer => 2
},
{
  :student_id => 21,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 21,
  :question_id => 9,
  :qanswer => 5
},
{
  :student_id => 21,
  :question_id => 10,
  :qanswer => 7
},
{
  :student_id => 22,
  :question_id => 1,
  :qanswer => 5
},
{
  :student_id => 22,
  :question_id => 2,
  :qanswer => 8
},
{
  :student_id => 22,
  :question_id => 3,
  :qanswer => 2
},
{
  :student_id => 22,
  :question_id => 4,
  :qanswer => 5
},
{
  :student_id => 22,
  :question_id => 5,
  :qanswer => 8
},
{
  :student_id => 22,
  :question_id => 6,
  :qanswer => 6
},
{
  :student_id => 22,
  :question_id => 7,
  :qanswer => 7
},
{
  :student_id => 22,
  :question_id => 8,
  :qanswer => 3
},
{
  :student_id => 22,
  :question_id => 9,
  :qanswer => 2
},
{
  :student_id => 22,
  :question_id => 10,
  :qanswer => 8
},
{
  :student_id => 23,
  :question_id => 1,
  :qanswer => 3
},
{
  :student_id => 23,
  :question_id => 2,
  :qanswer => 10
},
{
  :student_id => 23,
  :question_id => 3,
  :qanswer => 7
},
{
  :student_id => 23,
  :question_id => 4,
  :qanswer => 9
},
{
  :student_id => 23,
  :question_id => 5,
  :qanswer => 9
},
{
  :student_id => 23,
  :question_id => 6,
  :qanswer => 9
},
{
  :student_id => 23,
  :question_id => 7,
  :qanswer => 5
},
{
  :student_id => 23,
  :question_id => 8,
  :qanswer => 4
},
{
  :student_id => 23,
  :question_id => 9,
  :qanswer => 6
},
{
  :student_id => 23,
  :question_id => 10,
  :qanswer => 4
},
{
  :student_id => 24,
  :question_id => 1,
  :qanswer => 3
},
{
  :student_id => 24,
  :question_id => 2,
  :qanswer => 3
},
{
  :student_id => 24,
  :question_id => 3,
  :qanswer => 7
},
{
  :student_id => 24,
  :question_id => 4,
  :qanswer => 7
},
{
  :student_id => 24,
  :question_id => 5,
  :qanswer => 6
},
{
  :student_id => 24,
  :question_id => 6,
  :qanswer => 8
},
{
  :student_id => 24,
  :question_id => 7,
  :qanswer => 9
},
{
  :student_id => 24,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 24,
  :question_id => 9,
  :qanswer => 8
},
{
  :student_id => 24,
  :question_id => 10,
  :qanswer => 2
},
{
  :student_id => 25,
  :question_id => 1,
  :qanswer => 5
},
{
  :student_id => 25,
  :question_id => 2,
  :qanswer => 2
},
{
  :student_id => 25,
  :question_id => 3,
  :qanswer => 8
},
{
  :student_id => 25,
  :question_id => 4,
  :qanswer => 6
},
{
  :student_id => 25,
  :question_id => 5,
  :qanswer => 9
},
{
  :student_id => 25,
  :question_id => 6,
  :qanswer => 1
},
{
  :student_id => 25,
  :question_id => 7,
  :qanswer => 5
},
{
  :student_id => 25,
  :question_id => 8,
  :qanswer => 7
},
{
  :student_id => 25,
  :question_id => 9,
  :qanswer => 6
},
{
  :student_id => 25,
  :question_id => 10,
  :qanswer => 10
},
{
  :student_id => 26,
  :question_id => 1,
  :qanswer => 8
},
{
  :student_id => 26,
  :question_id => 2,
  :qanswer => 5
},
{
  :student_id => 26,
  :question_id => 3,
  :qanswer => 6
},
{
  :student_id => 26,
  :question_id => 4,
  :qanswer => 6
},
{
  :student_id => 26,
  :question_id => 5,
  :qanswer => 3
},
{
  :student_id => 26,
  :question_id => 6,
  :qanswer => 1
},
{
  :student_id => 26,
  :question_id => 7,
  :qanswer => 2
},
{
  :student_id => 26,
  :question_id => 8,
  :qanswer => 5
},
{
  :student_id => 26,
  :question_id => 9,
  :qanswer => 9
},
{
  :student_id => 26,
  :question_id => 10,
  :qanswer => 8
}
]

responses.each do |response_new|
  response = Response.new
  response.student_id = response_new[:student_id]
  response.question_id = response_new[:question_id]
  response.qanswer = response_new [:qanswer]
  response.save
end

puts "There are now #{Response.count} responses in the database."
