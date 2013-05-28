as yet unclassified
cmdKeyPressedForClientSourceElement: aClientSourceElement keyChar: keyChar editorSource: editorSource selectionInterval: selectionInterval
	^ aClientSourceElement cmdKeyBlock
		value: keyChar codePoint
		value: selectionInterval first
		value: selectionInterval last
		value: editorSource
		value: aClientSourceElement