as yet unclassified
defaultEditorWindowLocation
  ^ self object isMeta
    ifTrue: [ 'classSelectors' ]
    ifFalse: [ 'instanceSelectors' ]