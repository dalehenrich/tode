hooks
removeResizeHandleOn: element
	| handle |
	(element attributes includesKey: #resizeHandle) ifFalse: [ ^ self ].
	handle := element attributeAt: #resizeHandle.
	handle remove.
	element attributes removeKey: #resizeHandle.
	element view signalUpdate