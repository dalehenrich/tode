accessing
stack
	^ stack
		ifNil: [ | list |
			list := stackClientElement firstList key.
			stack := OrderedCollection new.
			1 to: list size do: [ :frameIndex | 
				stack
					add:
						(TDMinimalDebuggerContext new
							session: self;
							frameIndex: frameIndex;
							yourself) ].
			stack ]