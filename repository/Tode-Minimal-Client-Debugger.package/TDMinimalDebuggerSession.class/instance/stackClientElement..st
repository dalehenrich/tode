stack
stackClientElement: aClientListElement
	minimalStackClientElement := TDMinimalDebuggerStackClientListElement new
		session: self;
		clientElement: aClientListElement;
		yourself