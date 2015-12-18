tests - interaction
testInteractionOverridePopup

	"popup and draggable"	
	self assert: b interaction numberOfMenuEntries equals: 2.

	"Since there is a popup in the interaction, we cannot have two popup"
	b interaction popupText: 'hello'.
	self assert: b interaction numberOfMenuEntries equals: 2