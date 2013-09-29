as yet unclassified
getMenu: aMenu for: menuTarget
	self apply: self menuActionSpec to: aMenu for: menuTarget.
	^ aMenu