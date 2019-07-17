class FARule < Struct.new(:state, :character, :next_state)
	# Checks if the given character is applicable to the current state
	def applies_to?(state, character)
		self.state == state && self.character == character
	end

	def follow
		next_state
	end

	def inspect
		"#<FARule #{state.inspect}--#{character}-->#{next_state.inspect}>"
	end
end