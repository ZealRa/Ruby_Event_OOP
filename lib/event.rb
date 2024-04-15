require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, objet, invités)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = objet
    @attendees = invités
  end

  def postpone_24h
    @start_date += 24 * 60 * 60
  end

  def end_date
    @start_date + @duration
  end

  def is_past?
    start_date < Time.now
  end

  def is_future?
    Time.now > start_date
  end

  def is_soon?
    start_date < (Time.now + 30 * 60)
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de durée: #{@start_date}"
    if @duration > 60
      puts "Durée : #{@duration / 3600} heures"
    else
      puts "Durée: #{@duration} minutes"
    end
    puts "Invités: #{@attendees}"
  end
end
