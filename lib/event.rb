require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize (start_date, duration, title, attendees)
      @start_date = Time.parse (start_date)
      @duration, @title, @attendees = duration, title, attendees
  end
  
  def postpone_24h
    return @start_date += 24*60*60
  end

  def end_date
    return @start_date += duration*60
  end
  
  def is_past?
    return start_date < Time.now
  end
end


binding.pry
puts "end of file"