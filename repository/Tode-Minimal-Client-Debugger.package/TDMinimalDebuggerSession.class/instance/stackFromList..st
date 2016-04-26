accessing
stackFromList: stackList
	| newStack |
	newStack := OrderedCollection new.
	1 to: stackList size do: [ :frameIndex | 
		newStack
			add:
				(TDMinimalDebuggerContext new
					session: self;
					frameText: (stackList at: frameIndex);
					frameIndex: frameIndex;
					yourself) ].
	^ newStack