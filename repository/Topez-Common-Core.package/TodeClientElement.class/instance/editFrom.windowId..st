dispatching
editFrom: aGemStoneClient windowId: aWindowId
	^ aGemStoneClient
		editElement: self
		aspect: self editorAspectSelector
		label: self editorWindowLabel
		inWindow: aWindowId
		at: self editorWindowLocation