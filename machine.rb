class Machine < Struct.new(:expression)
	def step
		self.expression = expression.reduce
	end

	def run
		while expression.reducible?
			puts expression
			step
			puts expression
		end
	end
end