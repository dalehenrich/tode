actions
installDebuggingActionsIn: aPresentation
	aPresentation dynamicActions: [ :presentation | self dynamicDebuggingActions ]