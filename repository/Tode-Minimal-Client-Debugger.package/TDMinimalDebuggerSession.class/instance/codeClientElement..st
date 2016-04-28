code
codeClientElement: aClientSourceElement
	minimalCodeClientElement := TDMinimalDebuggerClientSourceElement new
		session: self;
		clientElement: aClientSourceElement;
		yourself.
	debugger sourceCode: minimalCodeClientElement source