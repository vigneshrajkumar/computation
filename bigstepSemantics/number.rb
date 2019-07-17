class Number < Struct.new(:value)
	def to_s
		value.to_s
	end

	def inspect
		"<#{self}>"
	end

	def evaluate(env)
		self
	end
end