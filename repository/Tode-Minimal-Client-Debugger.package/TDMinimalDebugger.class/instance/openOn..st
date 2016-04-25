scripting opening
openOn: aTDMinimalDebuggerSession
	aTDMinimalDebuggerSession debugger: self.
	^ (super openOn: aTDMinimalDebuggerSession)
		extent: self initialExtent;
		title: self session name;
		yourself