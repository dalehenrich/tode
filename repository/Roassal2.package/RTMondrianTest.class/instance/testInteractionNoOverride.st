tests - interaction
testInteractionNoOverride

	"popup and draggable"	
	self assert: b interaction numberOfMenuEntries equals: 2.

	b interaction when: TRMouseClick do: [ :evt | ].
	self assert: b interaction numberOfMenuEntries equals: 3