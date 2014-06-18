accessing
listKeystroke: event
	| action |
	action := self performCmdActionsWith: event shifted: event shiftPressed.
	^ self handleResponseActions: action