load 'number.rb'
load 'add.rb'
load 'multiply.rb'
load 'machine.rb'

puts "Computation..."

expression = Add.new(
	Multiply.new(Number.new(1), Number.new(2)),
	Multiply.new(Number.new(3), Number.new(4)),
)


Machine.new(expression).run

# puts Number.new(2).reducible?

# puts Add.new(Number.new(1), Number.new(1)).reducible?

