building
stackFrameListIn: a
	^ a list
		title: 'Stack';
		display: [ :session | session stack ];
		with: [ :aStackList | self installStackDebuggingActionsFor: aStackList ]