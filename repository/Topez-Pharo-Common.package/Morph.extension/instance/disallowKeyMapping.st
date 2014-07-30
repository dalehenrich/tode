*topez-pharo-common
disallowKeyMapping
	self allowsKeymapping: false.
	self submorphs do: [ :each | each disallowKeyMapping ]