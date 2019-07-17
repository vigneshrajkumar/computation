class Variable < Struct.new(:name)
	def to_s
		name.to_s
	end

	def reduce(env)
		env[name]
	end

	def inspect
		"<#{self}>"
	end

	def reducible?
		true
	end
end