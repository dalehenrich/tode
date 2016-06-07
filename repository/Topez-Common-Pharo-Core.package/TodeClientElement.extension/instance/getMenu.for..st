*Topez-Common-Pharo-Core
getMenu: aMenu for: menuTarget
	self apply: self menuActionSpec to: aMenu for: menuTarget.
	^ aMenu