require_relative 'passenger'

class Buber
  attr_accessor :taxis, :passengers
  def initialize
    @taxis = 20
    @passengers = []
#    has_taxis * 20
    puts "We got #{@taxis} working vehicles!"
  end

  # def has_taxis
  #   @taxis += 1
  #   #taxis.belong_to(self)
  # end
end

class SpaceTaxi
  attr_accessor
  def initialize
  end

  # def belong_to(company)
  #   @company = company
  # end
end
