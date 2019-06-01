# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([{email: 'test@gmail.com', password: 'test123', entity_type: 'admin'},
             {email: 'teacher@gmail.com', password: 'test111', entity_type: 'teacher', first_name: 'Oleg', last_name: 'Kryvenchyk'}])
Group.create!({name: 'KN-317', course: 3})
shed = Shedule.create!(user_id: 1, semestr: 1, study_year: '2019', group_id: 1)
dis = Discipline.create!([
    { name: 'Test 1', credits: 3, type_of_discipline: 'lecture', day: 'Monday', pair: 1, lecturer: "Test Testovych"},
    { name: 'Test 2', credits: 3, type_of_discipline: 'lecture', day: 'Monday', pair: 2, lecturer: "Test Testovych"},
    { name: 'Test 3', credits: 3, type_of_discipline: 'lecture', day: 'Monday', pair: 3, lecturer: "Test Testovych"},
    { name: 'Test 2', credits: 3, type_of_discipline: 'laboratorna', day: 'Tuesday', pair: 2, lecturer: "Test Testovych"},
    { name: 'Test 3', credits: 3, type_of_discipline: 'laboratorna', day: 'Wendesday', pair: 3, lecturer: "Test Testovych"},
    { name: 'Test 1', credits: 3, type_of_discipline: 'laboratorna', day: 'Friday', pair: 3, lecturer: "Test Testovych"},

                   ])

shed.disciplines << dis
