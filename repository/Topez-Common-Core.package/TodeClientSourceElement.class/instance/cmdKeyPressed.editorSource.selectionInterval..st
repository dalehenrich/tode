as yet unclassified
cmdKeyPressed: keyChar editorSource: editorSource selectionInterval: selectionInterval
  cmdKeyBlockOop ifNil: [ ^ false ].
  ^ self topez
    cmdKeyPressedForClientSourceElement: self
    keyChar: keyChar
    editorSource: editorSource
    selectionInterval: selectionInterval