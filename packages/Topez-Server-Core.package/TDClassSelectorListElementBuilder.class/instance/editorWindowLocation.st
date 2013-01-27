as yet unclassified
editorWindowLocation
  ^ self object isMeta
    ifTrue: [ 'classSelectors' ]
    ifFalse: [ 'instanceSelectors' ]