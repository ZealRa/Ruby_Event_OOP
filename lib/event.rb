require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  @attendees = []

  def initialize(start_date, duration, objet, invités)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = objet
    @attendees = invités
  end
end

binding.pry
puts 'End of the program'
