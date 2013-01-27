as yet unclassified
editorWindowLabel
  ^ self object isMeta
    ifTrue: [ 'class' ]
    ifFalse: [ 'instance' ]