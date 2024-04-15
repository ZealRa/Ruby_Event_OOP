# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
require 'rubocop'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require '/home/zealra/THP/semaine_4/ruby-event-oop/lib/event'
require '/home/zealra/THP/semaine_4/ruby-event-oop/lib/user'

user1 = User.new('alice@example.com', 25)

user2 = User.new('bob@example.com', 30)

user3 = User.new('bob@example.com', 30)

event1 = Event.new('2024-04-15 12:00', 2 * 60 * 60, "Réunion d'équipe", ['alice@example.com', 'bob@example.com'])

event2 = Event.new('2024-04-16 10:00', 3 * 60 * 60, 'Présentation client', ['charlie@example.com', 'dave@example.com'])

event3 = Event.new('2024-04-17 14:00', 4 * 60 * 60, 'Formation interne', ['eve@example.com', 'frank@example.com'])

class EventCreator
  def initialize
    create_event
  end

  def create_event
    puts 'Salut, tu veux créer un évènement ? Cool !'
    puts 'Commençons, quel est le nom de ton évènement ?'
    @title = gets.chomp
    puts 'Super. Quand aura-t-il lieu ?'
    @start_date = gets.chomp
    puts 'Au top. Combien de temps va-til durer ? (en minutes)'
    @duration = gets.chomp.to_i * 60
    puts 'Génial. Qui va participer ? Donne leurs emails'
    attendees = gets.chomp.split(';').map(&:strip)
    event = Event.new(start_date, duration, title, attendees)
    puts "Super, c'est noté, ton évènement a été créé !"
    puts 'Événement créé :'
    puts event
  end
end
