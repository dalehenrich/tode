accessing
defaultEditorWindowLocation
  ^ self isMeta
    ifTrue: [ 'classSelectors' ]
    ifFalse: [ 'instanceSelectors' ]