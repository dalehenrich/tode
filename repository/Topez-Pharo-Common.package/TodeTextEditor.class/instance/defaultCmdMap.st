typing support
defaultCmdMap
	| map |
	map := Array
		new: 256
		withAll:
			{#noop:.
			nil} -> nil.
	self bindBasicCmdKeyShortcuts: map.
	^ map