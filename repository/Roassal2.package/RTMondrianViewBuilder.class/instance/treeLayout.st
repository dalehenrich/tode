layout
treeLayout
	self view edges do: [ :e | e shape withVerticallAttachPoint ].
	self layout: RTTreeLayout new.
	^self layout