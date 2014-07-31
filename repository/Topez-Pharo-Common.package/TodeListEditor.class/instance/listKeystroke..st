accessing
listKeystroke: event
	| action |
	(event commandKeyPressed or: [ event controlKeyPressed ])
		ifFalse: [ ^ false ].
	action := self performCmdActionsWith: event shifted: event shiftPressed.
	^ self handleResponseActions: action