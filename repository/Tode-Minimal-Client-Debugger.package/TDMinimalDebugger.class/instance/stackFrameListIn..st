building
stackFrameListIn: a
	^ a list
		title: 'Frames';
		display: [ :session | session stack]