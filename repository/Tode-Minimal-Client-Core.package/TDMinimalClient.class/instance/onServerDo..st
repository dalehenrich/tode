server blocks
onServerDo: aBlock
	^ self onServerDo: aBlock serializeBlock: [ :anObject | anObject ]