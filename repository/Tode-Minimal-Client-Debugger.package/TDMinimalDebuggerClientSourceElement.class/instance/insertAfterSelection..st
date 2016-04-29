editor actions
insertAfterSelection: aString
	self debugger codePresentation
		announce: (TDMinimalDebuggerInsertAfterSelection new insertion: aString)