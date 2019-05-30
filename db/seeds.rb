
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Student.destroy_all
Instructor.destroy_all
Note.destroy_all
Resource.destroy_all
Follow.destroy_all

require 'faker'

#MODS-------------------------------------------------------------------
mods = ["Mod 1", "Mod 2", "Mod 3", "Mod 4", "Mod 5"]
mods.map do |x|
  Mod.create(mod_number:x)
end

#FOLLOWS-------------------------------------------------------------------
# Follow.create(student: , resource: )
#


#STUDENT-------------------------------------------------------------------
#
student_names = []
10.times do
  student_names << Faker::Name.name
end

student_names.map do |student_name|
  Student.create(name: student_name)
end


#INSTRUCTOR-----------------------------------------------------------------

instructors = ["Kevin", "Graham"]
tcfs = ["Helen", "Dan"]

instructors.map do |instructor|
  Instructor.create(name:instructor)
end

tcfs.map do |tcf|
  Instructor.create(name:tcf)
end


#NOTES-------------------------------------------------------------------

mod_1_lectures = ['Hashketball Review',
'Hashes and the Internet',
'Intro to Object-Oriented Programming',
'Object Relationships: One to Many',
'Object Relationships — Many to Many',
'SQL Review',
'Intro to ActiveRecord',
'ActiveRecord Associations',
'Rack and the Internet',
'Intro to Sinatra and MVC',
'Forms',
'Sinatra REST I (CR)',
'Sinatra REST II (UD)',
'Sinatra Relationships']

mod_2_lectures = ['Intro to Rails',
'Rails Forms',
'Rails Validations',
'Sessions, Cookies, & Flash',
'Authorization',
'Authentication']

mod_3_lectures = ['Intro to Front-End Web Development',
'Intro to the DOM',
'Intro to Events',
'DOM CRUD']



mod_1_lectures.map do |lecture|
  Note.create!(lecture_name: lecture, student_id: Student.first.id, mod_id:1)
end

# mod_2_lectures.map do |lecture|
#   Note.create(lecture_name: lecture, student_id: student_ids.sample, mod_id:1)
# end
#
# mod_3_lectures.map do |lecture|
#   Note.create(lecture_name: lecture, student_id: student_ids.sample, mod_id:1)
# end
