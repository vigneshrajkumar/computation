class DFA < Struct.new(:current_state, :accept_states, :rulebook)
	def accepting?
		accept_states.include?(current_state)
	end

	def read_character(ch)
		self.current_state = rulebook.next_state(current_state, ch)
	end

	def read_string(str)
		str.chars.each do |ch|
			read_character(ch)
		end
	end
end