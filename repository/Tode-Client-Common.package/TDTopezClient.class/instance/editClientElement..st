as yet unclassified
editClientElement: clientElement
	| aWindowId |
	aWindowId := clientElement editorWindowId.
	(aWindowId == nil and: [ clientElement editorWindowName ~~ nil ])
		ifTrue: [ aWindowId := self windowIdNamed: clientElement editorWindowName ].
	^ clientElement editFrom: self windowId: aWindowId