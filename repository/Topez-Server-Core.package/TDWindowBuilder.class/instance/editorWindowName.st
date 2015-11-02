accessing
editorWindowName
  theWindowName ifNil: [ ^ self defaultEditorWindowName ].
  ^ theWindowName