tests
testInteraction

	| ds |
	ds := RTDataSet new.
	self assert: ds interaction class equals: RTInteractionBuilder