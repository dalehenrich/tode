accessing
editorWindowLocation
  theWindowLocation ifNil: [ ^ self defaultEditorWindowLocation ].
  ^ theWindowLocation