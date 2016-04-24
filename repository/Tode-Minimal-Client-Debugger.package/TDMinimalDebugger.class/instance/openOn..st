scripting opening
openOn: aTDMinimalDebuggerSession
	aTDMinimalDebuggerSession debugger: self.
	^ (super openOn: aTDMinimalDebuggerSession)
		title: self session name;
		yourself