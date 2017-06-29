require_relative 'passenger'

class SpaceTaxi
  attr_accessor :id, :availability
  def initialize(id, availability = true)
    @id = id
    @availability = availability
  end
  # def belong_to(company)
  #   @company = company
  # end
end

class Buber
  attr_accessor :taxis, :passengers
  attr_reader :name

  def initialize(taxis = [])
    @taxis = taxis
    @passengers = []
    @name = 'Buber'
  end
  def check_taxis
    while @taxis.count <= 20
      new_taxi = SpaceTaxi.new(rand(1..999))
      @taxis << new_taxi
    end
  end
  def print_taxis
    puts "#{@name} has #{@taxis.count} working vehicles!"
    @taxis.each {|t| puts "#{t.id} is available: #{t.availability}."}
    puts "Type number:"
  end
  def has_passenger(passenger)
    @passengers << passenger
    passenger.client_of(self)
  end
end
