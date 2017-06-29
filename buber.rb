require_relative 'passenger'
require_relative 'spacetaxi'

class Buber
  attr_accessor :taxis, :passengers
  attr_reader :name

  def initialize(taxis = [])
    @taxis = taxis
    @passengers = []
    @name = 'Buber'
  end
  def taxi_ride

  end
  def has_passenger(passenger)
    @passengers << passenger
    passenger.client_of(self)
  end
  def check_taxis
    while @taxis.count <= 7
      new_taxi = SpaceTaxi.new(rand(1..99))
      @taxis << new_taxi
    end
  end
  def print_taxis
    puts "#{@name} has #{@taxis.count} working vehicles!"
    @taxis.each {|t| puts "Taxi #{t.id} is available: #{t.availability}."}
    puts "Type number:"
  end
  def select_taxi
    selected = gets.chomp.to_i
    @taxis.each do |t|
      if selected == t.id
        t.availability = false
        puts "Taxi #{t.id} is coming your way! Which address?"
        t.id
      end
    end
  end
end
