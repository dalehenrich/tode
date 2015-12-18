tests - interaction
testInteraction

	| i nodes |
	i := b interaction.
	nodes :=
	b nodes: #(1 2) forEach: [ :each |
		self assert: b interaction ~~ i
	].
	"Maybe this is what we should have"
	"self assert: nodes first announcer == nodes second announcer"