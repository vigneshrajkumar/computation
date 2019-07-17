class Machine < Struct.new(:stmt, :env)
	def step
		self.stmt, self.env = stmt.reduce(env)
	end

	def run
		while stmt.reducible?
			puts "#{stmt}, #{env}"
			step
		end

		puts "#{stmt}, #{env}"
	end
end