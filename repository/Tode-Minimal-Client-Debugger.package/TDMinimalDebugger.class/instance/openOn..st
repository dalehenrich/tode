scripting opening
openOn: aTDMinimalDebuggerSession
	clientProcess := Processor activeProcess.
	UIManager default uiProcess == clientProcess
		ifTrue: [ openedOnUIProcess := true.
			UIManager default spawnNewProcess ].
	UIManager default
		defer: [ aTDMinimalDebuggerSession debugger: self.
			(super openOn: aTDMinimalDebuggerSession)
				extent: self initialExtent;
				title: self session name;
				yourself.
			(aTDMinimalDebuggerSession stack at: aTDMinimalDebuggerSession initialStackFrameIndex)
				selectFrame ].
	clientProcess suspend