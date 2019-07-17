class Add < Struct.new(:left, :right)
	def to_s
		"#{left} + #{right}"
	end

	def inspect
		"<#{self}>"
	end
	
	def reducible?
		true
	end

	def evaluate(env)
		Number.new(left.evaluate(env).value + right.evaluate(env).value)
	end
end