actions
installDebuggingActionsIn: aPresentation
	aPresentation dynamicActions: [ :presentation | self debuggerDebuggingActions ]