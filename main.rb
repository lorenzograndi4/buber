require_relative 'buber'
require_relative 'passenger'

test = Buber.new#.run
lolo = Passenger.new

test.has_passenger(lolo)
test.check_taxis
test.print_taxis
test.select_taxi
