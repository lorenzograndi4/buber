class Buber
  attr_accessor
  def initialize
    @taxis = 20
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

  def belong_to(company)
    @company = company
  end
end

class Passenger
  attr_accessor :first, :last, :age
  def initialize(first, last, age)
    @first = first
    @last = last
    @age = age
  end
end
