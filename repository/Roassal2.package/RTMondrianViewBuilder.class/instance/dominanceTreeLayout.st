layout
dominanceTreeLayout
	self view edges do: [ :e | e shape withVerticallAttachPoint ].
	self layout: RTDominanceTreeLayout new.
	^self layout