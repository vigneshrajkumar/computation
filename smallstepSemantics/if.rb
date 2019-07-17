class If < Struct.new(:cond, :consequence, :alternative)
	def to_s
		"if (#{cond} { #{consequence} } else { #{alternative} })"
	end

	def inspect
		"<#{self}>"
	end	

	def reducible?
		true
	end

	def reduce(env)
		if cond.reducible?
			[If.new(cond.reduce(env), consequence, alternative), env]
		else
			case cond
			when Boolean.new(true)
				[consequence, env]
			when Boolean.new(false)	
				[alternative, env]
			end
		end
	end
end