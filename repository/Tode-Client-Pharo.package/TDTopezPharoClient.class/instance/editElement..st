as yet unclassified
editElement: clientElement
	| aWindowId |
	clientElement topez: self.
	aWindowId := clientElement editorWindowId.
	(aWindowId == nil and: [ clientElement editorWindowName ~~ nil ])
		ifTrue: [ aWindowId := self windowIdNamed: clientElement editorWindowName ].
	^ self
		editElement: clientElement
		aspect: clientElement editorAspectSelector
		label: clientElement editorWindowLabel
		inWindow: aWindowId
		at: clientElement editorWindowLocation