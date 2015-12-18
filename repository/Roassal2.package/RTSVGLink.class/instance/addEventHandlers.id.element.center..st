adding
addEventHandlers: aStream id: aString element: aRTElement center: aNumber
	aStream
		nextPutAll: '<a xlink:href="',(self link value: aRTElement model),'" target="_blank">'.
	"return the missing closing"
	^'</a>'