# Primitives
load 'doNothing.rb'
load 'variable.rb'
load 'number.rb'
load 'boolean.rb'
load 'sequence.rb'

# Operations
load 'add.rb'
load 'multiply.rb'
load 'lessThan.rb'
load 'assign.rb'

# Control Structures
load 'if.rb'
load 'while.rb'

load 'machine.rb'

puts "Computation..."

# expression = Add.new(
# 	Multiply.new(Number.new(1), Number.new(2)),
# 	Multiply.new(Number.new(3), Number.new(4)),
# )


# Machine.new(expression, {x: 2, y: 3}).run

# puts Number.new(2).reducible?

# puts Add.new(Number.new(1), Number.new(1)).reducible?



# puts Machine.new(
# 	LessThan.new(Number.new(5), 
# 		Add.new(Number.new(2), Number.new(2))), {}).run

# puts Assign.new(:x, Add.new(Variable.new(:x), Number.new(1)))


# puts Machine.new(
# 	Assign.new(:x, Add.new(Variable.new(:x), Number.new(1))),
# 	{x: Number.new(1)}
# 	).run

# puts Machine.new(If.new(Variable.new(:x),
# 	Assign.new(:y, Number.new(1)),
# 	Assign.new(:y, Number.new(2))
# 	),
# 	{x: Boolean.new(false)}).run

# puts LessThan.new(Number.new(2), Number.new(1))

# puts Machine.new(Assign.new(:x, Add.new(Number.new(1), Number.new(1))), {}).run

# puts "===="

# puts Machine.new(
# 	Sequence.new(
# 		Assign.new(:x, Add.new(Number.new(1), Number.new(1))),
# 		Assign.new(:y, Add.new(Variable.new(:x), Number.new(3)))
# 		), 
# 	{}).run


puts Machine.new(
	While.new(
		LessThan.new(Variable.new(:x), Number.new(5)),
		Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
		),
	{x: Number.new(1)}
).run


