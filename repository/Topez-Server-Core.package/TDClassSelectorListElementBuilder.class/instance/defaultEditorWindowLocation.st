as yet unclassified
defaultEditorWindowLocation
  ^ self isMeta
    ifTrue: [ 'classSelectors' ]
    ifFalse: [ 'instanceSelectors' ]