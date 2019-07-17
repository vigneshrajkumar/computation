load 'farule.rb'
load 'dfarulebook.rb'
load 'dfa.rb'


rulebook = DFARuleBook.new([
	FARule.new(1, 'a', 2), FARule.new(1, 'b', 1),
	FARule.new(2, 'a', 2), FARule.new(2, 'b', 3),
	FARule.new(3, 'a', 3), FARule.new(3, 'b', 3),
])

dfa = DFA.new(1, [3], rulebook)
puts dfa.accepting?

dfa.read_string('baab')
puts dfa.accepting?
