adding
addGlobalHandlers: aStream
	aStream
		nextPutAll: '
	onload="GADInit(evt)"
	onmousedown="Grab(evt)"
	onmousemove="Drag(evt)"
	onmouseup="Drop(evt)"
'