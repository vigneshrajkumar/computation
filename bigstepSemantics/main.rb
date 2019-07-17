# Primitives
load 'variable.rb'
load 'number.rb'
load 'boolean.rb'

# Operations
load 'add.rb'
load 'multiply.rb'
load 'lessThan.rb'

puts LessThan.new(
	Add.new(Variable.new(:x), Number.new(2)),
	Variable.new(:y)).evaluate({x: Number.new(2), y: Number.new(5)})

