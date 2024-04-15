# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require '/home/zealra/THP/semaine_4/ruby-event-oop/lib/event.rb'
require '/home/zealra/THP/semaine_4/ruby-event-oop/lib/user.rb'

user1 = User.new("alice@example.com", 25)

user2 = User.new("bob@example.com", 30)

user2 = User.new("bob@example.com", 30)

event1 = Event.new("2024-04-15 12:00", 2 * 60 * 60, "Réunion d'équipe", ["alice@example.com", "bob@example.com"])

event2 = Event.new("2024-04-16 10:00", 3 * 60 * 60, "Présentation client", ["charlie@example.com", "dave@example.com"])

event3 = Event.new("2024-04-17 14:00", 4 * 60 * 60, "Formation interne", ["eve@example.com", "frank@example.com"])

puts event2