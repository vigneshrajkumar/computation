class While < Struct.new(:cond, :body)
	def to_s
		"while (#{cond}) { #{body} }"
	end

	def inspect
		"<#{self}>"
	end	

	def reducible?
		true
	end

	def reduce(env)
		[If.new(cond, Sequence.new(body, self), DoNothing.new), env]
	end
end