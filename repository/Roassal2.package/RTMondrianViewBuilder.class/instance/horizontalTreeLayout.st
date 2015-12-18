layout
horizontalTreeLayout
	self view edges do: [ :e | e shape withHorizontalAttachPoint ].
	self layout: RTHorizontalTreeLayout new.
	^self layout