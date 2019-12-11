# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# ATTENTION CETTE PARTIE EFFACE LA BASE DE DONNÉE EXISTANTE
# (IL EST CEPENDANT POSSIBLE DE NE RIEN EFFACER ET DE GÉNÉRER DE NOUVEAUX 
# OBJECT EN EFFECTUANT UNE MODIFICATION DANS LA GÉNÉRATION ALÉATOIRE DE CHAQUE OBJETS.)
Answer.destroy_all
Question.destroy_all
Landing.destroy_all
Survey.destroy_all
Dashboard.destroy_all
User.destroy_all
ActiveRecord::Base.connection_pool.with_connection do |conn|
  conn.execute("TRUNCATE answers, questions, landings, surveys, dashboards, users RESTART IDENTITY")
end
puts 'Users destroy'
puts 'Surveys destroy'
puts 'Questions destroy'
puts 'Landings destroy'




# CREATE RANDOM USERS
5.times do 
  User.create(username: Faker::Internet.username,
              company: Faker::Company.name,
              email: Faker::Internet.email,
              password: 'valid_password123',
              password_confirmation: 'valid_password123',
              admin: rand(2)) #rand(2) permet de générer un nombre aléatoirement entre 0 et 1 => false ou true 
end
puts '5 Users created!'



# CREATE RANDOM DASHBOARDS
i = 1
5.times do 
  Dashboard.create(user_id: i)
  print 'Dashboard'
  puts i
  i += 1
end
puts '5 Dashboards created!'





# CREATE RANDOM SURVEYS
20.times do
  Survey.create(title: Faker::Book.title,
                user_id: rand(1..5)) #rand(1..5) permet de générer un user_id compris entre 1 et 5 (il y aura toujours au moins 5 users générés plus haut)
                                     # on pourrais ici remplacer 'rand(1..5)' par User.all.sample => ce qui selectionnerais un ID Utilisateur existant.
end
puts '20 Surveys created!'




# CREATE RANDOM LANDNGS
j = 1
20.times do
  Landing.create(survey_id: j)
  print 'Landing'
  puts j
  j += 1
end
puts '20 Landings created!'




# CREATE RANDOM QUESTIONS
100.times do
  Question.create(survey_id: rand(1..20), # Idem ici on pourrais remplacer 'rand(1..20)' par Survey.all.sample => ce qui selectionerais un ID Survey existant.
                  content: Faker::Lorem.sentence + '?',
                  answered: 0) #ici on met answered a 0 pour que chaque question générée reste disponible et n'ai pas le status répondue
end
puts '100 Questions created!'