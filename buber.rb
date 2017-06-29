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
  def initialize(taxis = [])
    @taxis = taxis
    @passengers = []
    puts "We got #{@taxis.count} working vehicles!"
  end

  def check_taxis
    while @taxis.count <= 20
      new_taxi = SpaceTaxi.new(rand(1..999))
      @taxis << new_taxi
    end
  end

  def print_taxis
    @taxis.each {|t| puts "#{t.id} is available: #{t.availability}."}
  end

end
