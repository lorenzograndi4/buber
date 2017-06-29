require_relative 'buber'

class Passenger
  attr_accessor :first, :last, :age, :company
  def initialize
    registration
    print_details
  end
  def registration
    puts "Please enter your first name:"
    @first = gets.chomp
    puts "Please enter your last name:"
    @last = gets.chomp
    puts "Please enter your age:"
    @age = gets.chomp.to_i
  end
  def client_of(company)
    @company = company
  end
  def print_details
    puts "Passenger #{first.capitalize} #{last.capitalize} (#{age}) just got on board!"
  end
end
